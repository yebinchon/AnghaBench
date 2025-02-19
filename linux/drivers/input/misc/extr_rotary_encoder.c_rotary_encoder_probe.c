
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct rotary_encoder {int steps; int axis; int * irq; TYPE_3__* gpios; void* last_stable; void* relative_axis; struct input_dev* input; int encoding; void* rollover; int access_mutex; } ;
struct device {int dummy; } ;
struct platform_device {int name; struct device dev; } ;
struct TYPE_7__ {struct device* parent; } ;
struct TYPE_6__ {int bustype; } ;
struct input_dev {TYPE_2__ dev; TYPE_1__ id; int name; } ;
typedef int * irq_handler_t ;
struct TYPE_8__ {int ndescs; int * desc; } ;


 int BUS_HOST ;
 int DRV_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int EV_REL ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (TYPE_3__*) ;
 int PTR_ERR (TYPE_3__*) ;
 int ROTENC_BINARY ;
 int ROTENC_GRAY ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int device_init_wakeup (struct device*,void*) ;
 int device_property_match_string (struct device*,char*,char*) ;
 int device_property_present (struct device*,char*) ;
 void* device_property_read_bool (struct device*,char*) ;
 int device_property_read_u32 (struct device*,char*,int*) ;
 TYPE_3__* devm_gpiod_get_array (struct device*,int *,int ) ;
 struct input_dev* devm_input_allocate_device (struct device*) ;
 int * devm_kcalloc (struct device*,int,int,int ) ;
 struct rotary_encoder* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int *,int,int ,struct rotary_encoder*) ;
 int gpiod_to_irq (int ) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int,int ,int,int ,int) ;
 int input_set_capability (struct input_dev*,int ,int) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct rotary_encoder*) ;
 void* rotary_encoder_get_state (struct rotary_encoder*) ;
 int rotary_encoder_half_period_irq ;
 int rotary_encoder_irq ;
 int rotary_encoder_quarter_period_irq ;

__attribute__((used)) static int rotary_encoder_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rotary_encoder *encoder;
 struct input_dev *input;
 irq_handler_t handler;
 u32 steps_per_period;
 unsigned int i;
 int err;

 encoder = devm_kzalloc(dev, sizeof(struct rotary_encoder), GFP_KERNEL);
 if (!encoder)
  return -ENOMEM;

 mutex_init(&encoder->access_mutex);

 device_property_read_u32(dev, "rotary-encoder,steps", &encoder->steps);

 err = device_property_read_u32(dev, "rotary-encoder,steps-per-period",
           &steps_per_period);
 if (err) {







  steps_per_period = device_property_read_bool(dev,
     "rotary-encoder,half-period") ? 2 : 1;
 }

 encoder->rollover =
  device_property_read_bool(dev, "rotary-encoder,rollover");

 if (!device_property_present(dev, "rotary-encoder,encoding") ||
     !device_property_match_string(dev, "rotary-encoder,encoding",
       "gray")) {
  dev_info(dev, "gray");
  encoder->encoding = ROTENC_GRAY;
 } else if (!device_property_match_string(dev, "rotary-encoder,encoding",
       "binary")) {
  dev_info(dev, "binary");
  encoder->encoding = ROTENC_BINARY;
 } else {
  dev_err(dev, "unknown encoding setting\n");
  return -EINVAL;
 }

 device_property_read_u32(dev, "linux,axis", &encoder->axis);
 encoder->relative_axis =
  device_property_read_bool(dev, "rotary-encoder,relative-axis");

 encoder->gpios = devm_gpiod_get_array(dev, ((void*)0), GPIOD_IN);
 if (IS_ERR(encoder->gpios)) {
  err = PTR_ERR(encoder->gpios);
  if (err != -EPROBE_DEFER)
   dev_err(dev, "unable to get gpios: %d\n", err);
  return err;
 }
 if (encoder->gpios->ndescs < 2) {
  dev_err(dev, "not enough gpios found\n");
  return -EINVAL;
 }

 input = devm_input_allocate_device(dev);
 if (!input)
  return -ENOMEM;

 encoder->input = input;

 input->name = pdev->name;
 input->id.bustype = BUS_HOST;
 input->dev.parent = dev;

 if (encoder->relative_axis)
  input_set_capability(input, EV_REL, encoder->axis);
 else
  input_set_abs_params(input,
         encoder->axis, 0, encoder->steps, 0, 1);

 switch (steps_per_period >> (encoder->gpios->ndescs - 2)) {
 case 4:
  handler = &rotary_encoder_quarter_period_irq;
  encoder->last_stable = rotary_encoder_get_state(encoder);
  break;
 case 2:
  handler = &rotary_encoder_half_period_irq;
  encoder->last_stable = rotary_encoder_get_state(encoder);
  break;
 case 1:
  handler = &rotary_encoder_irq;
  break;
 default:
  dev_err(dev, "'%d' is not a valid steps-per-period value\n",
   steps_per_period);
  return -EINVAL;
 }

 encoder->irq =
  devm_kcalloc(dev,
        encoder->gpios->ndescs, sizeof(*encoder->irq),
        GFP_KERNEL);
 if (!encoder->irq)
  return -ENOMEM;

 for (i = 0; i < encoder->gpios->ndescs; ++i) {
  encoder->irq[i] = gpiod_to_irq(encoder->gpios->desc[i]);

  err = devm_request_threaded_irq(dev, encoder->irq[i],
    ((void*)0), handler,
    IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING |
    IRQF_ONESHOT,
    DRV_NAME, encoder);
  if (err) {
   dev_err(dev, "unable to request IRQ %d (gpio#%d)\n",
    encoder->irq[i], i);
   return err;
  }
 }

 err = input_register_device(input);
 if (err) {
  dev_err(dev, "failed to register input device\n");
  return err;
 }

 device_init_wakeup(dev,
      device_property_read_bool(dev, "wakeup-source"));

 platform_set_drvdata(pdev, encoder);

 return 0;
}
