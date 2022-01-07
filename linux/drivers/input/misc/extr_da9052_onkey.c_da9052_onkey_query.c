
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct da9052_onkey {int work; int input; TYPE_1__* da9052; } ;
struct TYPE_2__ {int dev; } ;


 int DA9052_STATUSA_NONKEY ;
 int DA9052_STATUS_A_REG ;
 int KEY_POWER ;
 int da9052_reg_read (TYPE_1__*,int ) ;
 int dev_err (int ,char*,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void da9052_onkey_query(struct da9052_onkey *onkey)
{
 int ret;

 ret = da9052_reg_read(onkey->da9052, DA9052_STATUS_A_REG);
 if (ret < 0) {
  dev_err(onkey->da9052->dev,
   "Failed to read onkey event err=%d\n", ret);
 } else {





  bool pressed = !(ret & DA9052_STATUSA_NONKEY);

  input_report_key(onkey->input, KEY_POWER, pressed);
  input_sync(onkey->input);






  if (pressed)
   schedule_delayed_work(&onkey->work,
      msecs_to_jiffies(50));
 }
}
