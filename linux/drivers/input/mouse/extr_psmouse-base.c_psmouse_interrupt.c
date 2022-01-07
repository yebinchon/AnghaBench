
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
struct serio {int dev; } ;
struct TYPE_6__ {int flags; } ;
struct psmouse {scalar_t__ state; int pktcnt; scalar_t__ badbyte; scalar_t__* packet; int resync_time; void* last; int resync_work; TYPE_1__* protocol; int phys; int name; TYPE_2__ ps2dev; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {scalar_t__ type; int ignore_parity; } ;


 int HZ ;
 int IRQ_HANDLED ;
 int PS2_FLAG_ACK ;
 int PS2_FLAG_CMD ;
 scalar_t__ PSMOUSE_ACTIVATED ;
 scalar_t__ PSMOUSE_HGPK ;
 scalar_t__ PSMOUSE_IGNORE ;
 scalar_t__ PSMOUSE_RESYNCING ;
 scalar_t__ PSMOUSE_RET_BAT ;
 scalar_t__ PSMOUSE_RET_ID ;
 unsigned int SERIO_OOB_DATA ;
 unsigned int SERIO_PARITY ;
 unsigned int SERIO_TIMEOUT ;
 int __psmouse_set_state (struct psmouse*,scalar_t__) ;
 void* jiffies ;
 int pm_wakeup_event (int *,int ) ;
 int ps2_cmd_aborted (TYPE_2__*) ;
 scalar_t__ ps2_handle_ack (TYPE_2__*,void*) ;
 scalar_t__ ps2_handle_response (TYPE_2__*,void*) ;
 scalar_t__ psmouse_handle_byte (struct psmouse*) ;
 int psmouse_handle_oob_data (struct psmouse*,void*) ;
 int psmouse_info (struct psmouse*,char*,int ,int ,int) ;
 int psmouse_queue_work (struct psmouse*,int *,int ) ;
 int psmouse_warn (struct psmouse*,char*,char*,char*) ;
 struct psmouse* serio_get_drvdata (struct serio*) ;
 int serio_reconnect (struct serio*) ;
 scalar_t__ time_after (void*,void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t psmouse_interrupt(struct serio *serio,
         u8 data, unsigned int flags)
{
 struct psmouse *psmouse = serio_get_drvdata(serio);

 if (psmouse->state == PSMOUSE_IGNORE)
  goto out;

 if (unlikely((flags & SERIO_TIMEOUT) ||
       ((flags & SERIO_PARITY) &&
        !psmouse->protocol->ignore_parity))) {

  if (psmouse->state == PSMOUSE_ACTIVATED)
   psmouse_warn(psmouse,
         "bad data from KBC -%s%s\n",
         flags & SERIO_TIMEOUT ? " timeout" : "",
         flags & SERIO_PARITY ? " bad parity" : "");
  ps2_cmd_aborted(&psmouse->ps2dev);
  goto out;
 }

 if (flags & SERIO_OOB_DATA) {
  psmouse_handle_oob_data(psmouse, data);
  goto out;
 }

 if (unlikely(psmouse->ps2dev.flags & PS2_FLAG_ACK))
  if (ps2_handle_ack(&psmouse->ps2dev, data))
   goto out;

 if (unlikely(psmouse->ps2dev.flags & PS2_FLAG_CMD))
  if (ps2_handle_response(&psmouse->ps2dev, data))
   goto out;

 pm_wakeup_event(&serio->dev, 0);

 if (psmouse->state <= PSMOUSE_RESYNCING)
  goto out;

 if (psmouse->state == PSMOUSE_ACTIVATED &&
     psmouse->pktcnt && time_after(jiffies, psmouse->last + HZ/2)) {
  psmouse_info(psmouse, "%s at %s lost synchronization, throwing %d bytes away.\n",
        psmouse->name, psmouse->phys, psmouse->pktcnt);
  psmouse->badbyte = psmouse->packet[0];
  __psmouse_set_state(psmouse, PSMOUSE_RESYNCING);
  psmouse_queue_work(psmouse, &psmouse->resync_work, 0);
  goto out;
 }

 psmouse->packet[psmouse->pktcnt++] = data;


 if (unlikely(psmouse->packet[0] == PSMOUSE_RET_BAT && psmouse->pktcnt <= 2)) {
  if (psmouse->pktcnt == 1) {
   psmouse->last = jiffies;
   goto out;
  }

  if (psmouse->packet[1] == PSMOUSE_RET_ID ||
      (psmouse->protocol->type == PSMOUSE_HGPK &&
       psmouse->packet[1] == PSMOUSE_RET_BAT)) {
   __psmouse_set_state(psmouse, PSMOUSE_IGNORE);
   serio_reconnect(serio);
   goto out;
  }


  psmouse->pktcnt = 1;
  if (psmouse_handle_byte(psmouse))
   goto out;

  psmouse->packet[psmouse->pktcnt++] = data;
 }





 if (psmouse->state == PSMOUSE_ACTIVATED &&
     psmouse->pktcnt == 1 && psmouse->resync_time &&
     time_after(jiffies, psmouse->last + psmouse->resync_time * HZ)) {
  psmouse->badbyte = psmouse->packet[0];
  __psmouse_set_state(psmouse, PSMOUSE_RESYNCING);
  psmouse_queue_work(psmouse, &psmouse->resync_work, 0);
  goto out;
 }

 psmouse->last = jiffies;
 psmouse_handle_byte(psmouse);

 out:
 return IRQ_HANDLED;
}
