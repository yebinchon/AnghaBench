
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_xfer {scalar_t__ xfer_buf; } ;
struct ti_sci_version_info {int firmware_description; int firmware_revision; int abi_minor; int abi_major; } ;
struct ti_sci_msg_resp_version {int firmware_description; int firmware_revision; int abi_minor; int abi_major; } ;
struct ti_sci_msg_hdr {int dummy; } ;
struct ti_sci_handle {struct ti_sci_version_info version; } ;
struct ti_sci_info {int minfo; struct ti_sci_handle handle; struct device* dev; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct ti_sci_xfer*) ;
 int PTR_ERR (struct ti_sci_xfer*) ;
 int TI_SCI_FLAG_REQ_ACK_ON_PROCESSED ;
 int TI_SCI_MSG_VERSION ;
 int dev_err (struct device*,char*,int) ;
 int strncpy (int ,int ,int) ;
 int ti_sci_do_xfer (struct ti_sci_info*,struct ti_sci_xfer*) ;
 struct ti_sci_xfer* ti_sci_get_one_xfer (struct ti_sci_info*,int ,int ,int,int) ;
 int ti_sci_put_one_xfer (int *,struct ti_sci_xfer*) ;

__attribute__((used)) static int ti_sci_cmd_get_revision(struct ti_sci_info *info)
{
 struct device *dev = info->dev;
 struct ti_sci_handle *handle = &info->handle;
 struct ti_sci_version_info *ver = &handle->version;
 struct ti_sci_msg_resp_version *rev_info;
 struct ti_sci_xfer *xfer;
 int ret;

 xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_VERSION,
       TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
       sizeof(struct ti_sci_msg_hdr),
       sizeof(*rev_info));
 if (IS_ERR(xfer)) {
  ret = PTR_ERR(xfer);
  dev_err(dev, "Message alloc failed(%d)\n", ret);
  return ret;
 }

 rev_info = (struct ti_sci_msg_resp_version *)xfer->xfer_buf;

 ret = ti_sci_do_xfer(info, xfer);
 if (ret) {
  dev_err(dev, "Mbox send fail %d\n", ret);
  goto fail;
 }

 ver->abi_major = rev_info->abi_major;
 ver->abi_minor = rev_info->abi_minor;
 ver->firmware_revision = rev_info->firmware_revision;
 strncpy(ver->firmware_description, rev_info->firmware_description,
  sizeof(ver->firmware_description));

fail:
 ti_sci_put_one_xfer(&info->minfo, xfer);
 return ret;
}
