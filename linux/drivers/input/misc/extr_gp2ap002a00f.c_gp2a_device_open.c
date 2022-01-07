
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct gp2a_data {TYPE_1__* i2c_client; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int gp2a_enable (struct gp2a_data*) ;
 int gp2a_report (struct gp2a_data*) ;
 struct gp2a_data* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int gp2a_device_open(struct input_dev *dev)
{
 struct gp2a_data *dt = input_get_drvdata(dev);
 int error;

 error = gp2a_enable(dt);
 if (error < 0) {
  dev_err(&dt->i2c_client->dev,
   "unable to activate, err %d\n", error);
  return error;
 }

 gp2a_report(dt);

 return 0;
}
