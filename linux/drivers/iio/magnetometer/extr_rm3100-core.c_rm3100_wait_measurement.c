
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm3100_data {int conversion_time; int measuring_done; scalar_t__ use_interrupt; struct regmap* regmap; } ;
struct regmap {int dummy; } ;


 int ETIMEDOUT ;
 int RM3100_REG_STATUS ;
 unsigned int RM3100_STATUS_DRDY ;
 int msecs_to_jiffies (int ) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int reinit_completion (int *) ;
 int usleep_range (int,int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int rm3100_wait_measurement(struct rm3100_data *data)
{
 struct regmap *regmap = data->regmap;
 unsigned int val;
 int tries = 20;
 int ret;
 if (data->use_interrupt)
  reinit_completion(&data->measuring_done);

 ret = regmap_read(regmap, RM3100_REG_STATUS, &val);
 if (ret < 0)
  return ret;

 if ((val & RM3100_STATUS_DRDY) != RM3100_STATUS_DRDY) {
  if (data->use_interrupt) {
   ret = wait_for_completion_timeout(&data->measuring_done,
    msecs_to_jiffies(data->conversion_time));
   if (!ret)
    return -ETIMEDOUT;
  } else {
   do {
    usleep_range(1000, 5000);

    ret = regmap_read(regmap, RM3100_REG_STATUS,
        &val);
    if (ret < 0)
     return ret;

    if (val & RM3100_STATUS_DRDY)
     break;
   } while (--tries);
   if (!tries)
    return -ETIMEDOUT;
  }
 }
 return 0;
}
