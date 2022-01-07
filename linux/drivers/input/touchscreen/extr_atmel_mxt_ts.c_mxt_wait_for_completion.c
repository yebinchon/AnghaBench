
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxt_data {TYPE_1__* client; } ;
struct device {int dummy; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ETIMEDOUT ;
 int dev_err (struct device*,char*) ;
 unsigned long msecs_to_jiffies (unsigned int) ;
 long wait_for_completion_interruptible_timeout (struct completion*,unsigned long) ;

__attribute__((used)) static int mxt_wait_for_completion(struct mxt_data *data,
       struct completion *comp,
       unsigned int timeout_ms)
{
 struct device *dev = &data->client->dev;
 unsigned long timeout = msecs_to_jiffies(timeout_ms);
 long ret;

 ret = wait_for_completion_interruptible_timeout(comp, timeout);
 if (ret < 0) {
  return ret;
 } else if (ret == 0) {
  dev_err(dev, "Wait for completion timed out.\n");
  return -ETIMEDOUT;
 }
 return 0;
}
