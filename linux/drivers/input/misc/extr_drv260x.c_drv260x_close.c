
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct drv260x_data {int enable_gpio; TYPE_1__* client; int regmap; int work; } ;
struct TYPE_2__ {int dev; } ;


 int DRV260X_MODE ;
 int DRV260X_STANDBY ;
 int cancel_work_sync (int *) ;
 int dev_err (int *,char*,int) ;
 int gpiod_set_value (int ,int ) ;
 struct drv260x_data* input_get_drvdata (struct input_dev*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void drv260x_close(struct input_dev *input)
{
 struct drv260x_data *haptics = input_get_drvdata(input);
 int error;

 cancel_work_sync(&haptics->work);

 error = regmap_write(haptics->regmap, DRV260X_MODE, DRV260X_STANDBY);
 if (error)
  dev_err(&haptics->client->dev,
   "Failed to enter standby mode: %d\n", error);

 gpiod_set_value(haptics->enable_gpio, 0);
}
