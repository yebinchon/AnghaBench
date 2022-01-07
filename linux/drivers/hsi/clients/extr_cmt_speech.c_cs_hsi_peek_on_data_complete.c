
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int nents; int sgl; } ;
struct hsi_msg {scalar_t__ status; int complete; TYPE_1__ sgt; struct cs_hsi_iface* context; } ;
struct cs_hsi_iface {scalar_t__ iface_state; int data_state; size_t rx_slot; size_t rx_bufs; TYPE_2__* cl; int buf_size; scalar_t__* rx_offsets; scalar_t__ mmap_base; int lock; } ;
struct TYPE_4__ {int device; } ;


 scalar_t__ CS_STATE_CONFIGURED ;
 scalar_t__ HSI_STATUS_ERROR ;
 int SSI_CHANNEL_STATE_POLL ;
 int SSI_CHANNEL_STATE_READING ;
 int WARN_ON (int) ;
 int cs_hsi_data_read_error (struct cs_hsi_iface*,struct hsi_msg*) ;
 int cs_hsi_read_on_data_complete ;
 int dev_err (int *,char*) ;
 int hsi_async_read (TYPE_2__*,struct hsi_msg*) ;
 int sg_init_one (int ,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cs_hsi_peek_on_data_complete(struct hsi_msg *msg)
{
 struct cs_hsi_iface *hi = msg->context;
 u32 *address;
 int ret;

 if (unlikely(msg->status == HSI_STATUS_ERROR)) {
  cs_hsi_data_read_error(hi, msg);
  return;
 }
 if (unlikely(hi->iface_state != CS_STATE_CONFIGURED)) {
  dev_err(&hi->cl->device, "Data received in invalid state\n");
  cs_hsi_data_read_error(hi, msg);
  return;
 }

 spin_lock(&hi->lock);
 WARN_ON(!(hi->data_state & SSI_CHANNEL_STATE_POLL));
 hi->data_state &= ~SSI_CHANNEL_STATE_POLL;
 hi->data_state |= SSI_CHANNEL_STATE_READING;
 spin_unlock(&hi->lock);

 address = (u32 *)(hi->mmap_base +
    hi->rx_offsets[hi->rx_slot % hi->rx_bufs]);
 sg_init_one(msg->sgt.sgl, address, hi->buf_size);
 msg->sgt.nents = 1;
 msg->complete = cs_hsi_read_on_data_complete;
 ret = hsi_async_read(hi->cl, msg);
 if (ret)
  cs_hsi_data_read_error(hi, msg);
}
