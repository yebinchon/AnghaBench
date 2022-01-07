
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct touchscreen_data {TYPE_1__* input; struct ipaq_micro* micro; } ;
struct TYPE_11__ {int parent; } ;
struct platform_device {TYPE_5__ dev; } ;
struct ipaq_micro {int dummy; } ;
struct TYPE_10__ {char* name; int close; int open; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int dev_err (TYPE_5__*,char*) ;
 struct ipaq_micro* dev_get_drvdata (int ) ;
 int dev_info (TYPE_5__*,char*) ;
 TYPE_1__* devm_input_allocate_device (TYPE_5__*) ;
 struct touchscreen_data* devm_kzalloc (TYPE_5__*,int,int ) ;
 int input_register_device (TYPE_1__*) ;
 int input_set_abs_params (TYPE_1__*,int ,int ,int,int ,int ) ;
 int input_set_capability (TYPE_1__*,int ,int ) ;
 int input_set_drvdata (TYPE_1__*,struct touchscreen_data*) ;
 int micro_ts_close ;
 int micro_ts_open ;
 int platform_set_drvdata (struct platform_device*,struct touchscreen_data*) ;

__attribute__((used)) static int micro_ts_probe(struct platform_device *pdev)
{
 struct ipaq_micro *micro = dev_get_drvdata(pdev->dev.parent);
 struct touchscreen_data *ts;
 int error;

 ts = devm_kzalloc(&pdev->dev, sizeof(*ts), GFP_KERNEL);
 if (!ts)
  return -ENOMEM;

 ts->micro = micro;

 ts->input = devm_input_allocate_device(&pdev->dev);
 if (!ts->input) {
  dev_err(&pdev->dev, "failed to allocate input device\n");
  return -ENOMEM;
 }

 ts->input->name = "ipaq micro ts";
 ts->input->open = micro_ts_open;
 ts->input->close = micro_ts_close;

 input_set_drvdata(ts->input, ts);

 input_set_capability(ts->input, EV_KEY, BTN_TOUCH);
 input_set_capability(ts->input, EV_ABS, ABS_X);
 input_set_capability(ts->input, EV_ABS, ABS_Y);
 input_set_abs_params(ts->input, ABS_X, 0, 1023, 0, 0);
 input_set_abs_params(ts->input, ABS_Y, 0, 1023, 0, 0);

 error = input_register_device(ts->input);
 if (error) {
  dev_err(&pdev->dev, "error registering touch input\n");
  return error;
 }

 platform_set_drvdata(pdev, ts);

 dev_info(&pdev->dev, "iPAQ micro touchscreen\n");

 return 0;
}
