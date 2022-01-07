
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_sci_xfer {int done; int tx_message; } ;
struct ti_sci_info {int chan_tx; TYPE_1__* desc; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int max_rx_timeout_ms; } ;


 int ETIMEDOUT ;
 scalar_t__ _RET_IP_ ;
 int dev_err (struct device*,char*,void*) ;
 int mbox_client_txdone (int ,int) ;
 int mbox_send_message (int ,int *) ;
 int msecs_to_jiffies (int ) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static inline int ti_sci_do_xfer(struct ti_sci_info *info,
     struct ti_sci_xfer *xfer)
{
 int ret;
 int timeout;
 struct device *dev = info->dev;

 ret = mbox_send_message(info->chan_tx, &xfer->tx_message);
 if (ret < 0)
  return ret;

 ret = 0;


 timeout = msecs_to_jiffies(info->desc->max_rx_timeout_ms);
 if (!wait_for_completion_timeout(&xfer->done, timeout)) {
  dev_err(dev, "Mbox timedout in resp(caller: %pS)\n",
   (void *)_RET_IP_);
  ret = -ETIMEDOUT;
 }






 mbox_client_txdone(info->chan_tx, ret);

 return ret;
}
