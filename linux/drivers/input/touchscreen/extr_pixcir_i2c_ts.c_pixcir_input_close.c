
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pixcir_i2c_ts_data {int dummy; } ;
struct input_dev {int dummy; } ;


 struct pixcir_i2c_ts_data* input_get_drvdata (struct input_dev*) ;
 int pixcir_stop (struct pixcir_i2c_ts_data*) ;

__attribute__((used)) static void pixcir_input_close(struct input_dev *dev)
{
 struct pixcir_i2c_ts_data *ts = input_get_drvdata(dev);

 pixcir_stop(ts);
}
