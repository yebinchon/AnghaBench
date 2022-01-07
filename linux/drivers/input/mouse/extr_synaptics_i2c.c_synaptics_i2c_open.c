
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synaptics_i2c {int dwork; int client; } ;
struct input_dev {int dummy; } ;


 int NO_DATA_SLEEP_MSECS ;
 struct synaptics_i2c* input_get_drvdata (struct input_dev*) ;
 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int ) ;
 scalar_t__ polling_req ;
 int synaptics_i2c_reset_config (int ) ;
 int system_wq ;

__attribute__((used)) static int synaptics_i2c_open(struct input_dev *input)
{
 struct synaptics_i2c *touch = input_get_drvdata(input);
 int ret;

 ret = synaptics_i2c_reset_config(touch->client);
 if (ret)
  return ret;

 if (polling_req)
  mod_delayed_work(system_wq, &touch->dwork,
    msecs_to_jiffies(NO_DATA_SLEEP_MSECS));

 return 0;
}
