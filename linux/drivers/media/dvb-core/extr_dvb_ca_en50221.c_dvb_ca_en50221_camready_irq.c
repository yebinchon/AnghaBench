
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ca_slot {scalar_t__ slot_state; } ;
struct dvb_ca_private {struct dvb_ca_slot* slot_info; } ;
struct dvb_ca_en50221 {struct dvb_ca_private* private; } ;


 scalar_t__ DVB_CA_SLOTSTATE_VALIDATE ;
 scalar_t__ DVB_CA_SLOTSTATE_WAITREADY ;
 int dprintk (char*,int) ;
 int dvb_ca_en50221_thread_wakeup (struct dvb_ca_private*) ;

void dvb_ca_en50221_camready_irq(struct dvb_ca_en50221 *pubca, int slot)
{
 struct dvb_ca_private *ca = pubca->private;
 struct dvb_ca_slot *sl = &ca->slot_info[slot];

 dprintk("CAMREADY IRQ slot:%i\n", slot);

 if (sl->slot_state == DVB_CA_SLOTSTATE_WAITREADY) {
  sl->slot_state = DVB_CA_SLOTSTATE_VALIDATE;
  dvb_ca_en50221_thread_wakeup(ca);
 }
}
