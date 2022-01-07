
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct drv2665_data {TYPE_1__* client; int regmap; int work; } ;
struct TYPE_2__ {int dev; } ;


 int DRV2665_CTRL_2 ;
 int DRV2665_STANDBY ;
 int cancel_work_sync (int *) ;
 int dev_err (int *,char*,int) ;
 struct drv2665_data* input_get_drvdata (struct input_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void drv2665_close(struct input_dev *input)
{
 struct drv2665_data *haptics = input_get_drvdata(input);
 int error;

 cancel_work_sync(&haptics->work);

 error = regmap_update_bits(haptics->regmap, DRV2665_CTRL_2,
       DRV2665_STANDBY, DRV2665_STANDBY);
 if (error)
  dev_err(&haptics->client->dev,
   "Failed to enter standby mode: %d\n", error);
}
