
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxt_data {int reset_completion; int irq; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int MXT_COMMAND_RESET ;
 int MXT_RESET_INVALID_CHG ;
 int MXT_RESET_TIMEOUT ;
 int MXT_RESET_VALUE ;
 int dev_info (struct device*,char*) ;
 int disable_irq (int ) ;
 int msleep (int ) ;
 int mxt_acquire_irq (struct mxt_data*) ;
 int mxt_t6_command (struct mxt_data*,int ,int ,int) ;
 int mxt_wait_for_completion (struct mxt_data*,int *,int ) ;
 int reinit_completion (int *) ;

__attribute__((used)) static int mxt_soft_reset(struct mxt_data *data)
{
 struct device *dev = &data->client->dev;
 int ret = 0;

 dev_info(dev, "Resetting device\n");

 disable_irq(data->irq);

 reinit_completion(&data->reset_completion);

 ret = mxt_t6_command(data, MXT_COMMAND_RESET, MXT_RESET_VALUE, 0);
 if (ret)
  return ret;


 msleep(MXT_RESET_INVALID_CHG);

 mxt_acquire_irq(data);

 ret = mxt_wait_for_completion(data, &data->reset_completion,
          MXT_RESET_TIMEOUT);
 if (ret)
  return ret;

 return 0;
}
