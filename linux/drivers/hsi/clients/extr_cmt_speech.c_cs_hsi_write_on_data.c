
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int sgl; } ;
struct hsi_msg {int complete; TYPE_1__ sgt; } ;
struct cs_hsi_iface {scalar_t__ iface_state; int data_state; unsigned int tx_slot; struct hsi_msg* data_tx_msg; int lock; TYPE_2__* cl; int buf_size; scalar_t__* tx_offsets; scalar_t__ mmap_base; } ;
struct TYPE_4__ {int device; } ;


 scalar_t__ CS_STATE_CONFIGURED ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int SSI_CHANNEL_STATE_ERROR ;
 int SSI_CHANNEL_STATE_WRITING ;
 int cs_hsi_data_write_error (struct cs_hsi_iface*,struct hsi_msg*) ;
 int cs_hsi_write_on_data_complete ;
 int dev_err (int *,char*) ;
 int hsi_async_write (TYPE_2__*,struct hsi_msg*) ;
 int sg_init_one (int ,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cs_hsi_write_on_data(struct cs_hsi_iface *hi, unsigned int slot)
{
 u32 *address;
 struct hsi_msg *txmsg;
 int ret;

 spin_lock(&hi->lock);
 if (hi->iface_state != CS_STATE_CONFIGURED) {
  dev_err(&hi->cl->device, "Not configured, aborting\n");
  ret = -EINVAL;
  goto error;
 }
 if (hi->data_state & SSI_CHANNEL_STATE_ERROR) {
  dev_err(&hi->cl->device, "HSI error, aborting\n");
  ret = -EIO;
  goto error;
 }
 if (hi->data_state & SSI_CHANNEL_STATE_WRITING) {
  dev_err(&hi->cl->device, "Write pending on data channel.\n");
  ret = -EBUSY;
  goto error;
 }
 hi->data_state |= SSI_CHANNEL_STATE_WRITING;
 spin_unlock(&hi->lock);

 hi->tx_slot = slot;
 address = (u32 *)(hi->mmap_base + hi->tx_offsets[hi->tx_slot]);
 txmsg = hi->data_tx_msg;
 sg_init_one(txmsg->sgt.sgl, address, hi->buf_size);
 txmsg->complete = cs_hsi_write_on_data_complete;
 ret = hsi_async_write(hi->cl, txmsg);
 if (ret)
  cs_hsi_data_write_error(hi, txmsg);

 return ret;

error:
 spin_unlock(&hi->lock);
 if (ret == -EIO)
  cs_hsi_data_write_error(hi, hi->data_tx_msg);

 return ret;
}
