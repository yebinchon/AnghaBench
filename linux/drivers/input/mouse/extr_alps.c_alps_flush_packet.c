
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int serio; } ;
struct psmouse {scalar_t__ pktcnt; scalar_t__ pktsize; int* packet; TYPE_1__ ps2dev; } ;
struct alps_data {int (* process_packet ) (struct psmouse*) ;struct psmouse* psmouse; } ;


 struct alps_data* from_timer (int ,struct timer_list*,int ) ;
 struct alps_data* priv ;
 int psmouse_dbg (struct psmouse*,char*,int*) ;
 int serio_continue_rx (int ) ;
 int serio_pause_rx (int ) ;
 int stub1 (struct psmouse*) ;
 int timer ;

__attribute__((used)) static void alps_flush_packet(struct timer_list *t)
{
 struct alps_data *priv = from_timer(priv, t, timer);
 struct psmouse *psmouse = priv->psmouse;

 serio_pause_rx(psmouse->ps2dev.serio);

 if (psmouse->pktcnt == psmouse->pktsize) {






  if ((psmouse->packet[3] |
       psmouse->packet[4] |
       psmouse->packet[5]) & 0x80) {
   psmouse_dbg(psmouse,
        "refusing packet %3ph (suspected interleaved ps/2)\n",
        psmouse->packet + 3);
  } else {
   priv->process_packet(psmouse);
  }
  psmouse->pktcnt = 0;
 }

 serio_continue_rx(psmouse->ps2dev.serio);
}
