
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_dev {struct device* dev; } ;
struct device {int dummy; } ;


 int CMD_RST_PRC_EBUSY ;
 int EBUSY ;
 int ETIMEDOUT ;
 int cond_resched () ;
 int dev_err (struct device*,char*,...) ;
 int hns_roce_v2_cmd_complete (struct hns_roce_dev*) ;
 scalar_t__ hns_roce_v2_cmd_pending (struct hns_roce_dev*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int hns_roce_v2_chk_mbox(struct hns_roce_dev *hr_dev,
    unsigned long timeout)
{
 struct device *dev = hr_dev->dev;
 unsigned long end;
 u32 status;

 end = msecs_to_jiffies(timeout) + jiffies;
 while (hns_roce_v2_cmd_pending(hr_dev) && time_before(jiffies, end))
  cond_resched();

 if (hns_roce_v2_cmd_pending(hr_dev)) {
  dev_err(dev, "[cmd_poll]hw run cmd TIMEDOUT!\n");
  return -ETIMEDOUT;
 }

 status = hns_roce_v2_cmd_complete(hr_dev);
 if (status != 0x1) {
  if (status == CMD_RST_PRC_EBUSY)
   return status;

  dev_err(dev, "mailbox status 0x%x!\n", status);
  return -EBUSY;
 }

 return 0;
}
