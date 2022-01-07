
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ts4800_ts {int phys; int * dev; struct input_polled_dev* poll_dev; int base; } ;
struct platform_device {int dev; } ;
struct input_polled_dev {TYPE_1__* input; int poll; int close; int open; int poll_interval; struct ts4800_ts* private; } ;
struct TYPE_3__ {char* name; int phys; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_12BIT ;
 int POLL_INTERVAL ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 char* dev_name (int *) ;
 struct input_polled_dev* devm_input_allocate_polled_device (int *) ;
 struct ts4800_ts* devm_kzalloc (int *,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int input_register_polled_device (struct input_polled_dev*) ;
 int input_set_abs_params (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int input_set_capability (TYPE_1__*,int ,int ) ;
 int snprintf (int ,int,char*,char*) ;
 int ts4800_parse_dt (struct platform_device*,struct ts4800_ts*) ;
 int ts4800_ts_close ;
 int ts4800_ts_open ;
 int ts4800_ts_poll ;

__attribute__((used)) static int ts4800_ts_probe(struct platform_device *pdev)
{
 struct input_polled_dev *poll_dev;
 struct ts4800_ts *ts;
 int error;

 ts = devm_kzalloc(&pdev->dev, sizeof(*ts), GFP_KERNEL);
 if (!ts)
  return -ENOMEM;

 error = ts4800_parse_dt(pdev, ts);
 if (error)
  return error;

 ts->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(ts->base))
  return PTR_ERR(ts->base);

 poll_dev = devm_input_allocate_polled_device(&pdev->dev);
 if (!poll_dev)
  return -ENOMEM;

 snprintf(ts->phys, sizeof(ts->phys), "%s/input0", dev_name(&pdev->dev));
 ts->poll_dev = poll_dev;
 ts->dev = &pdev->dev;

 poll_dev->private = ts;
 poll_dev->poll_interval = POLL_INTERVAL;
 poll_dev->open = ts4800_ts_open;
 poll_dev->close = ts4800_ts_close;
 poll_dev->poll = ts4800_ts_poll;

 poll_dev->input->name = "TS-4800 Touchscreen";
 poll_dev->input->phys = ts->phys;

 input_set_capability(poll_dev->input, EV_KEY, BTN_TOUCH);
 input_set_abs_params(poll_dev->input, ABS_X, 0, MAX_12BIT, 0, 0);
 input_set_abs_params(poll_dev->input, ABS_Y, 0, MAX_12BIT, 0, 0);

 error = input_register_polled_device(poll_dev);
 if (error) {
  dev_err(&pdev->dev,
   "Unabled to register polled input device (%d)\n",
   error);
  return error;
 }

 return 0;
}
