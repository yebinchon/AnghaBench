
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct touchscreen_data {int dummy; } ;
struct input_dev {int dummy; } ;


 struct touchscreen_data* input_get_drvdata (struct input_dev*) ;
 int micro_ts_toggle_receive (struct touchscreen_data*,int) ;

__attribute__((used)) static int micro_ts_open(struct input_dev *input)
{
 struct touchscreen_data *ts = input_get_drvdata(input);

 micro_ts_toggle_receive(ts, 1);

 return 0;
}
