
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct TYPE_2__ {scalar_t__ buf; } ;
typedef struct ti_sci_xfer {TYPE_1__ tx_message; scalar_t__ xfer_buf; } const ti_sci_xfer ;
struct ti_sci_msg_req_set_ctrl {void* control_flags_clear; void* control_flags_set; int processor_id; } ;
struct ti_sci_msg_hdr {int dummy; } ;
struct ti_sci_info {int minfo; struct device* dev; } ;
struct ti_sci_handle {TYPE_1__ tx_message; scalar_t__ xfer_buf; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct ti_sci_xfer const*) ;
 int PTR_ERR (struct ti_sci_xfer const*) ;
 int TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ;
 int TI_SCI_MSG_SET_CTRL ;
 int dev_err (struct device*,char*,int) ;
 struct ti_sci_info* handle_to_ti_sci_info (struct ti_sci_xfer const*) ;
 int ti_sci_do_xfer (struct ti_sci_info*,struct ti_sci_xfer const*) ;
 struct ti_sci_xfer* ti_sci_get_one_xfer (struct ti_sci_info*,int ,int ,int,int) ;
 scalar_t__ ti_sci_is_response_ack (struct ti_sci_msg_hdr*) ;
 int ti_sci_put_one_xfer (int *,struct ti_sci_xfer const*) ;

__attribute__((used)) static int ti_sci_cmd_proc_set_control(const struct ti_sci_handle *handle,
           u8 proc_id, u32 control_flags_set,
           u32 control_flags_clear)
{
 struct ti_sci_msg_req_set_ctrl *req;
 struct ti_sci_msg_hdr *resp;
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

 xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_SET_CTRL,
       TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
       sizeof(*req), sizeof(*resp));
 if (IS_ERR(xfer)) {
  ret = PTR_ERR(xfer);
  dev_err(dev, "Message alloc failed(%d)\n", ret);
  return ret;
 }
 req = (struct ti_sci_msg_req_set_ctrl *)xfer->xfer_buf;
 req->processor_id = proc_id;
 req->control_flags_set = control_flags_set;
 req->control_flags_clear = control_flags_clear;

 ret = ti_sci_do_xfer(info, xfer);
 if (ret) {
  dev_err(dev, "Mbox send fail %d\n", ret);
  goto fail;
 }

 resp = (struct ti_sci_msg_hdr *)xfer->tx_message.buf;

 ret = ti_sci_is_response_ack(resp) ? 0 : -ENODEV;

fail:
 ti_sci_put_one_xfer(&info->minfo, xfer);

 return ret;
}
