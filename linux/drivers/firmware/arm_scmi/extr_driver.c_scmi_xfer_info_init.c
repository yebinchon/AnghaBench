
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct scmi_xfers_info {int xfer_lock; struct scmi_xfer* xfer_block; void* xfer_alloc_table; } ;
struct TYPE_4__ {void* buf; } ;
struct TYPE_3__ {void* buf; } ;
struct scmi_xfer {int done; TYPE_2__ rx; TYPE_1__ tx; } ;
struct scmi_info {struct scmi_xfers_info tx_minfo; struct scmi_desc* desc; struct device* dev; } ;
struct scmi_desc {int max_msg; int max_msg_size; } ;
struct device {int dummy; } ;


 int BITS_TO_LONGS (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MSG_TOKEN_MAX ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (struct device*,char*,int,int) ;
 void* devm_kcalloc (struct device*,int,int,int ) ;
 int init_completion (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int scmi_xfer_info_init(struct scmi_info *sinfo)
{
 int i;
 struct scmi_xfer *xfer;
 struct device *dev = sinfo->dev;
 const struct scmi_desc *desc = sinfo->desc;
 struct scmi_xfers_info *info = &sinfo->tx_minfo;


 if (WARN_ON(desc->max_msg >= MSG_TOKEN_MAX)) {
  dev_err(dev, "Maximum message of %d exceeds supported %ld\n",
   desc->max_msg, MSG_TOKEN_MAX);
  return -EINVAL;
 }

 info->xfer_block = devm_kcalloc(dev, desc->max_msg,
     sizeof(*info->xfer_block), GFP_KERNEL);
 if (!info->xfer_block)
  return -ENOMEM;

 info->xfer_alloc_table = devm_kcalloc(dev, BITS_TO_LONGS(desc->max_msg),
           sizeof(long), GFP_KERNEL);
 if (!info->xfer_alloc_table)
  return -ENOMEM;


 for (i = 0, xfer = info->xfer_block; i < desc->max_msg; i++, xfer++) {
  xfer->rx.buf = devm_kcalloc(dev, sizeof(u8), desc->max_msg_size,
         GFP_KERNEL);
  if (!xfer->rx.buf)
   return -ENOMEM;

  xfer->tx.buf = xfer->rx.buf;
  init_completion(&xfer->done);
 }

 spin_lock_init(&info->xfer_lock);

 return 0;
}
