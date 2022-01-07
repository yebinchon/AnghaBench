
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nents; int sgl; } ;
struct hsi_msg {int complete; TYPE_1__ sgt; } ;
struct cs_hsi_iface {int data_state; TYPE_2__* cl; scalar_t__ mmap_base; struct hsi_msg* data_rx_msg; int lock; } ;
struct TYPE_4__ {int device; } ;


 int SSI_CHANNEL_STATE_POLL ;
 int SSI_CHANNEL_STATE_READING ;
 int cs_hsi_data_read_error (struct cs_hsi_iface*,struct hsi_msg*) ;
 int cs_hsi_peek_on_data_complete ;
 int dev_dbg (int *,char*,int) ;
 int hsi_async_read (TYPE_2__*,struct hsi_msg*) ;
 int sg_init_one (int ,void*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cs_hsi_read_on_data(struct cs_hsi_iface *hi)
{
 struct hsi_msg *rxmsg;
 int ret;

 spin_lock(&hi->lock);
 if (hi->data_state &
  (SSI_CHANNEL_STATE_READING | SSI_CHANNEL_STATE_POLL)) {
  dev_dbg(&hi->cl->device, "Data read already pending (%u)\n",
   hi->data_state);
  spin_unlock(&hi->lock);
  return;
 }
 hi->data_state |= SSI_CHANNEL_STATE_POLL;
 spin_unlock(&hi->lock);

 rxmsg = hi->data_rx_msg;
 sg_init_one(rxmsg->sgt.sgl, (void *)hi->mmap_base, 0);
 rxmsg->sgt.nents = 0;
 rxmsg->complete = cs_hsi_peek_on_data_complete;

 ret = hsi_async_read(hi->cl, rxmsg);
 if (ret)
  cs_hsi_data_read_error(hi, rxmsg);
}
