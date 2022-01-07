
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int bustype; } ;
struct input_dev {int close; int open; TYPE_2__ id; int name; } ;
struct iio_channel {TYPE_1__* channel; scalar_t__ indio_dev; } ;
struct grts_state {int pressure; struct iio_channel* iio_cb; struct input_dev* input; int prop; int pressure_min; struct iio_channel* iio_chans; } ;
struct TYPE_3__ {int datasheet_name; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int BUS_HOST ;
 int DRIVER_NAME ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int GRTS_DEFAULT_PRESSURE_MIN ;
 int GRTS_MAX_POS_MASK ;
 scalar_t__ IS_ERR (struct iio_channel*) ;
 int PTR_ERR (struct iio_channel*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int device_property_read_u32 (struct device*,char*,int *) ;
 int devm_add_action_or_reset (struct device*,int ,struct iio_channel*) ;
 struct iio_channel* devm_iio_channel_get_all (struct device*) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 struct grts_state* devm_kzalloc (struct device*,int,int ) ;
 int grts_cb ;
 int grts_close ;
 int grts_disable ;
 int grts_open ;
 struct iio_channel* iio_channel_get_all_cb (struct device*,int ,struct grts_state*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct grts_state*) ;
 int strcmp (int ,char*) ;
 int touchscreen_parse_properties (struct input_dev*,int,int *) ;

__attribute__((used)) static int grts_probe(struct platform_device *pdev)
{
 struct grts_state *st;
 struct input_dev *input;
 struct device *dev = &pdev->dev;
 struct iio_channel *chan;
 int error;

 st = devm_kzalloc(dev, sizeof(struct grts_state), GFP_KERNEL);
 if (!st)
  return -ENOMEM;


 st->iio_chans = devm_iio_channel_get_all(dev);
 if (IS_ERR(st->iio_chans)) {
  error = PTR_ERR(st->iio_chans);
  if (error != -EPROBE_DEFER)
   dev_err(dev, "can't get iio channels.\n");
  return error;
 }

 chan = &st->iio_chans[0];
 st->pressure = 0;
 while (chan && chan->indio_dev) {
  if (!strcmp(chan->channel->datasheet_name, "pressure"))
   st->pressure = 1;
  chan++;
 }

 if (st->pressure) {
  error = device_property_read_u32(dev,
       "touchscreen-min-pressure",
       &st->pressure_min);
  if (error) {
   dev_dbg(dev, "can't get touchscreen-min-pressure property.\n");
   st->pressure_min = GRTS_DEFAULT_PRESSURE_MIN;
  }
 }

 input = devm_input_allocate_device(dev);
 if (!input) {
  dev_err(dev, "failed to allocate input device.\n");
  return -ENOMEM;
 }

 input->name = DRIVER_NAME;
 input->id.bustype = BUS_HOST;
 input->open = grts_open;
 input->close = grts_close;

 input_set_abs_params(input, ABS_X, 0, GRTS_MAX_POS_MASK - 1, 0, 0);
 input_set_abs_params(input, ABS_Y, 0, GRTS_MAX_POS_MASK - 1, 0, 0);
 if (st->pressure)
  input_set_abs_params(input, ABS_PRESSURE, st->pressure_min,
         0xffff, 0, 0);

 input_set_capability(input, EV_KEY, BTN_TOUCH);


 touchscreen_parse_properties(input, 0, &st->prop);

 st->input = input;
 input_set_drvdata(input, st);

 error = input_register_device(input);
 if (error) {
  dev_err(dev, "failed to register input device.");
  return error;
 }

 st->iio_cb = iio_channel_get_all_cb(dev, grts_cb, st);
 if (IS_ERR(st->iio_cb)) {
  dev_err(dev, "failed to allocate callback buffer.\n");
  return PTR_ERR(st->iio_cb);
 }

 error = devm_add_action_or_reset(dev, grts_disable, st->iio_cb);
 if (error) {
  dev_err(dev, "failed to add disable action.\n");
  return error;
 }

 return 0;
}
