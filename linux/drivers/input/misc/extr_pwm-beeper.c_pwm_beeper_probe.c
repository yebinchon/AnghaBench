
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct pwm_state {int enabled; } ;
struct pwm_beeper {int bell_frequency; TYPE_2__* input; int work; int amplifier; int pwm; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int vendor; int product; int version; int bustype; } ;
struct TYPE_7__ {char* name; char* phys; int close; int event; TYPE_1__ id; } ;


 int BUS_HOST ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int EV_SND ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SND_BELL ;
 int SND_TONE ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,...) ;
 int device_property_read_u32 (struct device*,char*,int*) ;
 TYPE_2__* devm_input_allocate_device (struct device*) ;
 struct pwm_beeper* devm_kzalloc (struct device*,int,int ) ;
 int devm_pwm_get (struct device*,int *) ;
 int devm_regulator_get (struct device*,char*) ;
 int input_register_device (TYPE_2__*) ;
 int input_set_capability (TYPE_2__*,int ,int ) ;
 int input_set_drvdata (TYPE_2__*,struct pwm_beeper*) ;
 int platform_set_drvdata (struct platform_device*,struct pwm_beeper*) ;
 int pwm_apply_state (int ,struct pwm_state*) ;
 int pwm_beeper_close ;
 int pwm_beeper_event ;
 int pwm_beeper_work ;
 int pwm_init_state (int ,struct pwm_state*) ;

__attribute__((used)) static int pwm_beeper_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct pwm_beeper *beeper;
 struct pwm_state state;
 u32 bell_frequency;
 int error;

 beeper = devm_kzalloc(dev, sizeof(*beeper), GFP_KERNEL);
 if (!beeper)
  return -ENOMEM;

 beeper->pwm = devm_pwm_get(dev, ((void*)0));
 if (IS_ERR(beeper->pwm)) {
  error = PTR_ERR(beeper->pwm);
  if (error != -EPROBE_DEFER)
   dev_err(dev, "Failed to request PWM device: %d\n",
    error);
  return error;
 }


 pwm_init_state(beeper->pwm, &state);
 state.enabled = 0;
 error = pwm_apply_state(beeper->pwm, &state);
 if (error) {
  dev_err(dev, "failed to apply initial PWM state: %d\n",
   error);
  return error;
 }

 beeper->amplifier = devm_regulator_get(dev, "amp");
 if (IS_ERR(beeper->amplifier)) {
  error = PTR_ERR(beeper->amplifier);
  if (error != -EPROBE_DEFER)
   dev_err(dev, "Failed to get 'amp' regulator: %d\n",
    error);
  return error;
 }

 INIT_WORK(&beeper->work, pwm_beeper_work);

 error = device_property_read_u32(dev, "beeper-hz", &bell_frequency);
 if (error) {
  bell_frequency = 1000;
  dev_dbg(dev,
   "failed to parse 'beeper-hz' property, using default: %uHz\n",
   bell_frequency);
 }

 beeper->bell_frequency = bell_frequency;

 beeper->input = devm_input_allocate_device(dev);
 if (!beeper->input) {
  dev_err(dev, "Failed to allocate input device\n");
  return -ENOMEM;
 }

 beeper->input->name = "pwm-beeper";
 beeper->input->phys = "pwm/input0";
 beeper->input->id.bustype = BUS_HOST;
 beeper->input->id.vendor = 0x001f;
 beeper->input->id.product = 0x0001;
 beeper->input->id.version = 0x0100;

 input_set_capability(beeper->input, EV_SND, SND_TONE);
 input_set_capability(beeper->input, EV_SND, SND_BELL);

 beeper->input->event = pwm_beeper_event;
 beeper->input->close = pwm_beeper_close;

 input_set_drvdata(beeper->input, beeper);

 error = input_register_device(beeper->input);
 if (error) {
  dev_err(dev, "Failed to register input device: %d\n", error);
  return error;
 }

 platform_set_drvdata(pdev, beeper);

 return 0;
}
