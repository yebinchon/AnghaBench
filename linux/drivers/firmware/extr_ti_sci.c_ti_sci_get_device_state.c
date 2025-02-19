
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef struct ti_sci_xfer {scalar_t__ xfer_buf; } const ti_sci_xfer ;
struct ti_sci_msg_resp_get_device_state {int current_state; int programmed_state; int resets; int context_loss_count; } ;
struct ti_sci_msg_req_get_device_state {int id; } ;
struct ti_sci_info {int minfo; struct device* dev; } ;
struct ti_sci_handle {scalar_t__ xfer_buf; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct ti_sci_xfer const*) ;
 int PTR_ERR (struct ti_sci_xfer const*) ;
 int TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ;
 int TI_SCI_MSG_GET_DEVICE_STATE ;
 int dev_err (struct device*,char*,int) ;
 struct ti_sci_info* handle_to_ti_sci_info (struct ti_sci_xfer const*) ;
 int ti_sci_do_xfer (struct ti_sci_info*,struct ti_sci_xfer const*) ;
 struct ti_sci_xfer* ti_sci_get_one_xfer (struct ti_sci_info*,int ,int ,int,int) ;
 int ti_sci_is_response_ack (struct ti_sci_msg_resp_get_device_state*) ;
 int ti_sci_put_one_xfer (int *,struct ti_sci_xfer const*) ;

__attribute__((used)) static int ti_sci_get_device_state(const struct ti_sci_handle *handle,
       u32 id, u32 *clcnt, u32 *resets,
        u8 *p_state, u8 *c_state)
{
 struct ti_sci_info *info;
 struct ti_sci_msg_req_get_device_state *req;
 struct ti_sci_msg_resp_get_device_state *resp;
 struct ti_sci_xfer *xfer;
 struct device *dev;
 int ret = 0;

 if (IS_ERR(handle))
  return PTR_ERR(handle);
 if (!handle)
  return -EINVAL;

 if (!clcnt && !resets && !p_state && !c_state)
  return -EINVAL;

 info = handle_to_ti_sci_info(handle);
 dev = info->dev;

 xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_GET_DEVICE_STATE,
       TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
       sizeof(*req), sizeof(*resp));
 if (IS_ERR(xfer)) {
  ret = PTR_ERR(xfer);
  dev_err(dev, "Message alloc failed(%d)\n", ret);
  return ret;
 }
 req = (struct ti_sci_msg_req_get_device_state *)xfer->xfer_buf;
 req->id = id;

 ret = ti_sci_do_xfer(info, xfer);
 if (ret) {
  dev_err(dev, "Mbox send fail %d\n", ret);
  goto fail;
 }

 resp = (struct ti_sci_msg_resp_get_device_state *)xfer->xfer_buf;
 if (!ti_sci_is_response_ack(resp)) {
  ret = -ENODEV;
  goto fail;
 }

 if (clcnt)
  *clcnt = resp->context_loss_count;
 if (resets)
  *resets = resp->resets;
 if (p_state)
  *p_state = resp->programmed_state;
 if (c_state)
  *c_state = resp->current_state;
fail:
 ti_sci_put_one_xfer(&info->minfo, xfer);

 return ret;
}
