
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef struct ti_sci_xfer {scalar_t__ xfer_buf; } const ti_sci_xfer ;
struct ti_sci_msg_psil_unpair {void* dst_thread; void* src_thread; void* nav_id; } ;
struct ti_sci_msg_hdr {int dummy; } ;
struct ti_sci_info {int minfo; struct device* dev; } ;
struct ti_sci_handle {scalar_t__ xfer_buf; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct ti_sci_xfer const*) ;
 int PTR_ERR (struct ti_sci_xfer const*) ;
 int TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ;
 int TI_SCI_MSG_RM_PSIL_UNPAIR ;
 int dev_err (struct device*,char*,int) ;
 struct ti_sci_info* handle_to_ti_sci_info (struct ti_sci_xfer const*) ;
 int ti_sci_do_xfer (struct ti_sci_info*,struct ti_sci_xfer const*) ;
 struct ti_sci_xfer* ti_sci_get_one_xfer (struct ti_sci_info*,int ,int ,int,int) ;
 scalar_t__ ti_sci_is_response_ack (struct ti_sci_msg_hdr*) ;
 int ti_sci_put_one_xfer (int *,struct ti_sci_xfer const*) ;

__attribute__((used)) static int ti_sci_cmd_rm_psil_unpair(const struct ti_sci_handle *handle,
         u32 nav_id, u32 src_thread, u32 dst_thread)
{
 struct ti_sci_msg_psil_unpair *req;
 struct ti_sci_msg_hdr *resp;
 struct ti_sci_xfer *xfer;
 struct ti_sci_info *info;
 struct device *dev;
 int ret = 0;

 if (IS_ERR(handle))
  return PTR_ERR(handle);
 if (!handle)
  return -EINVAL;

 info = handle_to_ti_sci_info(handle);
 dev = info->dev;

 xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_RM_PSIL_UNPAIR,
       TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
       sizeof(*req), sizeof(*resp));
 if (IS_ERR(xfer)) {
  ret = PTR_ERR(xfer);
  dev_err(dev, "RM_PSIL:Message reconfig failed(%d)\n", ret);
  return ret;
 }
 req = (struct ti_sci_msg_psil_unpair *)xfer->xfer_buf;
 req->nav_id = nav_id;
 req->src_thread = src_thread;
 req->dst_thread = dst_thread;

 ret = ti_sci_do_xfer(info, xfer);
 if (ret) {
  dev_err(dev, "RM_PSIL:Mbox send fail %d\n", ret);
  goto fail;
 }

 resp = (struct ti_sci_msg_hdr *)xfer->xfer_buf;
 ret = ti_sci_is_response_ack(resp) ? 0 : -EINVAL;

fail:
 ti_sci_put_one_xfer(&info->minfo, xfer);

 return ret;
}
