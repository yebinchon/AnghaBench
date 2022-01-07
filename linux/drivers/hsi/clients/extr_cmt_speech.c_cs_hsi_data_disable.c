
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs_hsi_iface {int iface_state; TYPE_1__* cl; } ;
struct TYPE_2__ {int device; } ;


 int CS_STATE_CONFIGURED ;
 int CS_STATE_OPENED ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static void cs_hsi_data_disable(struct cs_hsi_iface *hi, int old_state)
{
 if (old_state == CS_STATE_CONFIGURED) {
  dev_dbg(&hi->cl->device,
   "closing data channel with slot size 0\n");
  hi->iface_state = CS_STATE_OPENED;
 }
}
