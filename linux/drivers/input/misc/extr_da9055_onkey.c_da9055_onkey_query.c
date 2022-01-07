
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct da9055_onkey {int work; int input; TYPE_1__* da9055; } ;
struct TYPE_2__ {int dev; } ;


 int DA9055_NOKEY_STS ;
 int DA9055_REG_STATUS_A ;
 int KEY_POWER ;
 int da9055_reg_read (TYPE_1__*,int ) ;
 int dev_err (int ,char*,int) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void da9055_onkey_query(struct da9055_onkey *onkey)
{
 int key_stat;

 key_stat = da9055_reg_read(onkey->da9055, DA9055_REG_STATUS_A);
 if (key_stat < 0) {
  dev_err(onkey->da9055->dev,
   "Failed to read onkey event %d\n", key_stat);
 } else {
  key_stat &= DA9055_NOKEY_STS;



  if (!key_stat) {
   input_report_key(onkey->input, KEY_POWER, 0);
   input_sync(onkey->input);
  }
 }





 if (key_stat)
  schedule_delayed_work(&onkey->work, msecs_to_jiffies(10));

}
