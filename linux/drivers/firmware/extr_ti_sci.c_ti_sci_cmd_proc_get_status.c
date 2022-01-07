
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ buf; } ;
typedef struct ti_sci_xfer {TYPE_1__ tx_message; scalar_t__ xfer_buf; } const ti_sci_xfer ;
struct ti_sci_msg_resp_get_status {int bootvector_low; int status_flags; int control_flags; int config_flags; scalar_t__ bootvector_high; } ;
struct ti_sci_msg_req_get_status {int processor_id; } ;
struct ti_sci_info {int minfo; struct device* dev; } ;
struct ti_sci_handle {TYPE_1__ tx_message; scalar_t__ xfer_buf; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct ti_sci_xfer const*) ;
 int PTR_ERR (struct ti_sci_xfer const*) ;
 int TI_SCI_ADDR_HIGH_MASK ;
 int TI_SCI_ADDR_HIGH_SHIFT ;
 int TI_SCI_ADDR_LOW_MASK ;
 int TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ;
 int TI_SCI_MSG_GET_STATUS ;
 int dev_err (struct device*,char*,int) ;
 struct ti_sci_info* handle_to_ti_sci_info (struct ti_sci_xfer const*) ;
 int ti_sci_do_xfer (struct ti_sci_info*,struct ti_sci_xfer const*) ;
 struct ti_sci_xfer* ti_sci_get_one_xfer (struct ti_sci_info*,int ,int ,int,int) ;
 int ti_sci_is_response_ack (struct ti_sci_msg_resp_get_status*) ;
 int ti_sci_put_one_xfer (int *,struct ti_sci_xfer const*) ;

__attribute__((used)) static int ti_sci_cmd_proc_get_status(const struct ti_sci_handle *handle,
          u8 proc_id, u64 *bv, u32 *cfg_flags,
          u32 *ctrl_flags, u32 *sts_flags)
{
 struct ti_sci_msg_resp_get_status *resp;
 struct ti_sci_msg_req_get_status *req;
 struct ti_sci_info *info;
 struct ti_sci_xfer *xfer;
 struct device *dev;
 int ret = 0;

 if (!handle)
  return -EINVAL;
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 info = handle_to_ti_sci_info(handle);
 dev = info->dev;

 xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_GET_STATUS,
       TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
       sizeof(*req), sizeof(*resp));
 if (IS_ERR(xfer)) {
  ret = PTR_ERR(xfer);
  dev_err(dev, "Message alloc failed(%d)\n", ret);
  return ret;
 }
 req = (struct ti_sci_msg_req_get_status *)xfer->xfer_buf;
 req->processor_id = proc_id;

 ret = ti_sci_do_xfer(info, xfer);
 if (ret) {
  dev_err(dev, "Mbox send fail %d\n", ret);
  goto fail;
 }

 resp = (struct ti_sci_msg_resp_get_status *)xfer->tx_message.buf;

 if (!ti_sci_is_response_ack(resp)) {
  ret = -ENODEV;
 } else {
  *bv = (resp->bootvector_low & TI_SCI_ADDR_LOW_MASK) |
        (((u64)resp->bootvector_high << TI_SCI_ADDR_HIGH_SHIFT) &
         TI_SCI_ADDR_HIGH_MASK);
  *cfg_flags = resp->config_flags;
  *ctrl_flags = resp->control_flags;
  *sts_flags = resp->status_flags;
 }

fail:
 ti_sci_put_one_xfer(&info->minfo, xfer);

 return ret;
}
