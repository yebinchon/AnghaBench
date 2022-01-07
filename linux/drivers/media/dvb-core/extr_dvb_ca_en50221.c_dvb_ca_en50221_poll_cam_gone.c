
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_ca_private {int flags; TYPE_1__* slot_info; TYPE_2__* pub; } ;
struct TYPE_4__ {int (* poll_slot_status ) (TYPE_2__*,int,int ) ;} ;
struct TYPE_3__ {int slot_state; } ;


 int DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE ;
 int DVB_CA_EN50221_POLL_CAM_PRESENT ;
 int DVB_CA_SLOTSTATE_NONE ;
 int dvb_ca_en50221_thread_update_delay (struct dvb_ca_private*) ;
 int stub1 (TYPE_2__*,int,int ) ;

__attribute__((used)) static int dvb_ca_en50221_poll_cam_gone(struct dvb_ca_private *ca, int slot)
{
 int changed = 0;
 int status;





 if ((!(ca->flags & DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE)) &&
     (ca->pub->poll_slot_status)) {
  status = ca->pub->poll_slot_status(ca->pub, slot, 0);
  if (!(status &
   DVB_CA_EN50221_POLL_CAM_PRESENT)) {
   ca->slot_info[slot].slot_state = DVB_CA_SLOTSTATE_NONE;
   dvb_ca_en50221_thread_update_delay(ca);
   changed = 1;
  }
 }
 return changed;
}
