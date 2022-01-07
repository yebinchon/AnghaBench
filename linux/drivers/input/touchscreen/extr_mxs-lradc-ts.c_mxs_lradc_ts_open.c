
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_ts {int dummy; } ;
struct input_dev {int dummy; } ;


 struct mxs_lradc_ts* input_get_drvdata (struct input_dev*) ;
 int mxs_lradc_enable_touch_detection (struct mxs_lradc_ts*) ;

__attribute__((used)) static int mxs_lradc_ts_open(struct input_dev *dev)
{
 struct mxs_lradc_ts *ts = input_get_drvdata(dev);


 mxs_lradc_enable_touch_detection(ts);

 return 0;
}
