
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef struct ti_sci_xfer {scalar_t__ xfer_buf; } const ti_sci_xfer ;
struct ti_sci_msg_resp_get_clock_num_parents {int num_parents; int num_parents_32; } ;
struct ti_sci_msg_req_get_clock_num_parents {int dev_id; int clk_id; int clk_id_32; } ;
struct ti_sci_info {int minfo; struct device* dev; } ;
struct ti_sci_handle {scalar_t__ xfer_buf; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct ti_sci_xfer const*) ;
 int PTR_ERR (struct ti_sci_xfer const*) ;
 int TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ;
 int TI_SCI_MSG_GET_NUM_CLOCK_PARENTS ;
 int dev_err (struct device*,char*,int) ;
 struct ti_sci_info* handle_to_ti_sci_info (struct ti_sci_xfer const*) ;
 int ti_sci_do_xfer (struct ti_sci_info*,struct ti_sci_xfer const*) ;
 struct ti_sci_xfer* ti_sci_get_one_xfer (struct ti_sci_info*,int ,int ,int,int) ;
 int ti_sci_is_response_ack (struct ti_sci_msg_resp_get_clock_num_parents*) ;
 int ti_sci_put_one_xfer (int *,struct ti_sci_xfer const*) ;

__attribute__((used)) static int ti_sci_cmd_clk_get_num_parents(const struct ti_sci_handle *handle,
       u32 dev_id, u32 clk_id,
       u32 *num_parents)
{
 struct ti_sci_info *info;
 struct ti_sci_msg_req_get_clock_num_parents *req;
 struct ti_sci_msg_resp_get_clock_num_parents *resp;
 struct ti_sci_xfer *xfer;
 struct device *dev;
 int ret = 0;

 if (IS_ERR(handle))
  return PTR_ERR(handle);
 if (!handle || !num_parents)
  return -EINVAL;

 info = handle_to_ti_sci_info(handle);
 dev = info->dev;

 xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_GET_NUM_CLOCK_PARENTS,
       TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
       sizeof(*req), sizeof(*resp));
 if (IS_ERR(xfer)) {
  ret = PTR_ERR(xfer);
  dev_err(dev, "Message alloc failed(%d)\n", ret);
  return ret;
 }
 req = (struct ti_sci_msg_req_get_clock_num_parents *)xfer->xfer_buf;
 req->dev_id = dev_id;
 if (clk_id < 255) {
  req->clk_id = clk_id;
 } else {
  req->clk_id = 255;
  req->clk_id_32 = clk_id;
 }

 ret = ti_sci_do_xfer(info, xfer);
 if (ret) {
  dev_err(dev, "Mbox send fail %d\n", ret);
  goto fail;
 }

 resp = (struct ti_sci_msg_resp_get_clock_num_parents *)xfer->xfer_buf;

 if (!ti_sci_is_response_ack(resp)) {
  ret = -ENODEV;
 } else {
  if (resp->num_parents < 255)
   *num_parents = resp->num_parents;
  else
   *num_parents = resp->num_parents_32;
 }

fail:
 ti_sci_put_one_xfer(&info->minfo, xfer);

 return ret;
}
