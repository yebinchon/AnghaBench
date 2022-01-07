
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; scalar_t__ poll_completion; int protocol_id; } ;
struct scmi_xfer {TYPE_2__ hdr; int done; } ;
struct scmi_info {TYPE_1__* desc; int tx_idr; struct device* dev; } ;
struct scmi_handle {int dummy; } ;
struct scmi_chan_info {int chan; int payload; } ;
struct device {int dummy; } ;
typedef int ktime_t ;
struct TYPE_3__ {int max_rx_timeout_ms; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int SCMI_MAX_POLL_TO_NS ;
 scalar_t__ _RET_IP_ ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,void*) ;
 struct scmi_info* handle_to_scmi_info (struct scmi_handle const*) ;
 struct scmi_chan_info* idr_find (int *,int ) ;
 int ktime_add_ns (int ,int ) ;
 scalar_t__ ktime_before (int ,int ) ;
 int ktime_get () ;
 int mbox_client_txdone (int ,int) ;
 int mbox_send_message (int ,struct scmi_xfer*) ;
 int msecs_to_jiffies (int ) ;
 int scmi_fetch_response (struct scmi_xfer*,int ) ;
 int scmi_to_linux_errno (scalar_t__) ;
 int scmi_xfer_done_no_timeout (struct scmi_chan_info*,struct scmi_xfer*,int ) ;
 int spin_until_cond (int ) ;
 scalar_t__ unlikely (int) ;
 int wait_for_completion_timeout (int *,int) ;

int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
{
 int ret;
 int timeout;
 struct scmi_info *info = handle_to_scmi_info(handle);
 struct device *dev = info->dev;
 struct scmi_chan_info *cinfo;

 cinfo = idr_find(&info->tx_idr, xfer->hdr.protocol_id);
 if (unlikely(!cinfo))
  return -EINVAL;

 ret = mbox_send_message(cinfo->chan, xfer);
 if (ret < 0) {
  dev_dbg(dev, "mbox send fail %d\n", ret);
  return ret;
 }


 ret = 0;

 if (xfer->hdr.poll_completion) {
  ktime_t stop = ktime_add_ns(ktime_get(), SCMI_MAX_POLL_TO_NS);

  spin_until_cond(scmi_xfer_done_no_timeout(cinfo, xfer, stop));

  if (ktime_before(ktime_get(), stop))
   scmi_fetch_response(xfer, cinfo->payload);
  else
   ret = -ETIMEDOUT;
 } else {

  timeout = msecs_to_jiffies(info->desc->max_rx_timeout_ms);
  if (!wait_for_completion_timeout(&xfer->done, timeout)) {
   dev_err(dev, "mbox timed out in resp(caller: %pS)\n",
    (void *)_RET_IP_);
   ret = -ETIMEDOUT;
  }
 }

 if (!ret && xfer->hdr.status)
  ret = scmi_to_linux_errno(xfer->hdr.status);







 mbox_client_txdone(cinfo->chan, ret);

 return ret;
}
