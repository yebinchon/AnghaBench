
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct hns_roce_dev {struct device* dev; } ;
struct device {int dummy; } ;


 int EAGAIN ;
 int HNS_ROCE_V2_GO_BIT_TIMEOUT_MSECS ;
 int cond_resched () ;
 int dev_dbg (struct device*,char*,int,int) ;
 int dev_err (struct device*,char*,int) ;
 int hns_roce_mbox_post (struct hns_roce_dev*,int ,int ,int ,int ,int ,int ,int) ;
 scalar_t__ hns_roce_v2_cmd_pending (struct hns_roce_dev*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int hns_roce_v2_post_mbox(struct hns_roce_dev *hr_dev, u64 in_param,
     u64 out_param, u32 in_modifier, u8 op_modifier,
     u16 op, u16 token, int event)
{
 struct device *dev = hr_dev->dev;
 unsigned long end;
 int ret;

 end = msecs_to_jiffies(HNS_ROCE_V2_GO_BIT_TIMEOUT_MSECS) + jiffies;
 while (hns_roce_v2_cmd_pending(hr_dev)) {
  if (time_after(jiffies, end)) {
   dev_dbg(dev, "jiffies=%d end=%d\n", (int)jiffies,
    (int)end);
   return -EAGAIN;
  }
  cond_resched();
 }

 ret = hns_roce_mbox_post(hr_dev, in_param, out_param, in_modifier,
     op_modifier, op, token, event);
 if (ret)
  dev_err(dev, "Post mailbox fail(%d)\n", ret);

 return ret;
}
