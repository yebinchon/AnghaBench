
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {scalar_t__ pktcnt; scalar_t__ pktsize; int packet; struct hgpk_data* private; } ;
struct hgpk_data {scalar_t__ mode; scalar_t__ recalib_window; int recalib_wq; } ;
typedef int psmouse_ret_t ;


 scalar_t__ HGPK_MODE_MOUSE ;
 int PSMOUSE_BAD_DATA ;
 int PSMOUSE_FULL_PACKET ;
 int PSMOUSE_GOOD_DATA ;
 int hgpk_is_byte_valid (struct psmouse*,int ) ;
 int hgpk_process_advanced_packet (struct psmouse*) ;
 int hgpk_process_simple_packet (struct psmouse*) ;
 int jiffies ;
 int msecs_to_jiffies (int ) ;
 int post_interrupt_delay ;
 int psmouse_dbg (struct psmouse*,char*) ;
 int psmouse_queue_work (struct psmouse*,int *,int ) ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static psmouse_ret_t hgpk_process_byte(struct psmouse *psmouse)
{
 struct hgpk_data *priv = psmouse->private;

 if (!hgpk_is_byte_valid(psmouse, psmouse->packet))
  return PSMOUSE_BAD_DATA;

 if (psmouse->pktcnt >= psmouse->pktsize) {
  if (priv->mode == HGPK_MODE_MOUSE)
   hgpk_process_simple_packet(psmouse);
  else
   hgpk_process_advanced_packet(psmouse);
  return PSMOUSE_FULL_PACKET;
 }

 if (priv->recalib_window) {
  if (time_before(jiffies, priv->recalib_window)) {




   psmouse_dbg(psmouse,
        "packet inside calibration window, queueing another recalibration\n");
   psmouse_queue_work(psmouse, &priv->recalib_wq,
     msecs_to_jiffies(post_interrupt_delay));
  }
  priv->recalib_window = 0;
 }

 return PSMOUSE_GOOD_DATA;
}
