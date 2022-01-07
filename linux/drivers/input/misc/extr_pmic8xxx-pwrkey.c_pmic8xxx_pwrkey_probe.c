
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct pmic8xxx_pwrkey {int key_press_irq; struct regmap* regmap; int shutdown_fn; } ;
struct TYPE_8__ {int parent; int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct input_dev {char* name; char* phys; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int IRQF_TRIGGER_RISING ;
 int KEY_POWER ;
 int PON_CNTL_1 ;
 unsigned int PON_CNTL_PULL_UP ;
 unsigned int PON_CNTL_TRIG_DELAY_MASK ;
 int USEC_PER_SEC ;
 int dev_dbg (TYPE_1__*,char*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct regmap* dev_get_regmap (int ,int *) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 struct input_dev* devm_input_allocate_device (TYPE_1__*) ;
 struct pmic8xxx_pwrkey* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_irq (TYPE_1__*,int,int ,int ,char*,struct input_dev*) ;
 unsigned int ilog2 (unsigned int) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int of_device_get_match_data (TYPE_1__*) ;
 int of_property_read_bool (int ,char*) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;
 int platform_get_irq (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,struct pmic8xxx_pwrkey*) ;
 int pwrkey_press_irq ;
 int pwrkey_release_irq ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_write (struct regmap*,int ,unsigned int) ;

__attribute__((used)) static int pmic8xxx_pwrkey_probe(struct platform_device *pdev)
{
 struct input_dev *pwr;
 int key_release_irq = platform_get_irq(pdev, 0);
 int key_press_irq = platform_get_irq(pdev, 1);
 int err;
 unsigned int delay;
 unsigned int pon_cntl;
 struct regmap *regmap;
 struct pmic8xxx_pwrkey *pwrkey;
 u32 kpd_delay;
 bool pull_up;

 if (of_property_read_u32(pdev->dev.of_node, "debounce", &kpd_delay))
  kpd_delay = 15625;


 if (kpd_delay > USEC_PER_SEC * 2 || kpd_delay < USEC_PER_SEC / 64) {
  dev_err(&pdev->dev, "invalid power key trigger delay\n");
  return -EINVAL;
 }

 pull_up = of_property_read_bool(pdev->dev.of_node, "pull-up");

 regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!regmap) {
  dev_err(&pdev->dev, "failed to locate regmap for the device\n");
  return -ENODEV;
 }

 pwrkey = devm_kzalloc(&pdev->dev, sizeof(*pwrkey), GFP_KERNEL);
 if (!pwrkey)
  return -ENOMEM;

 pwrkey->shutdown_fn = of_device_get_match_data(&pdev->dev);
 pwrkey->regmap = regmap;
 pwrkey->key_press_irq = key_press_irq;

 pwr = devm_input_allocate_device(&pdev->dev);
 if (!pwr) {
  dev_dbg(&pdev->dev, "Can't allocate power button\n");
  return -ENOMEM;
 }

 input_set_capability(pwr, EV_KEY, KEY_POWER);

 pwr->name = "pmic8xxx_pwrkey";
 pwr->phys = "pmic8xxx_pwrkey/input0";

 delay = (kpd_delay << 6) / USEC_PER_SEC;
 delay = ilog2(delay);

 err = regmap_read(regmap, PON_CNTL_1, &pon_cntl);
 if (err < 0) {
  dev_err(&pdev->dev, "failed reading PON_CNTL_1 err=%d\n", err);
  return err;
 }

 pon_cntl &= ~PON_CNTL_TRIG_DELAY_MASK;
 pon_cntl |= (delay & PON_CNTL_TRIG_DELAY_MASK);
 if (pull_up)
  pon_cntl |= PON_CNTL_PULL_UP;
 else
  pon_cntl &= ~PON_CNTL_PULL_UP;

 err = regmap_write(regmap, PON_CNTL_1, pon_cntl);
 if (err < 0) {
  dev_err(&pdev->dev, "failed writing PON_CNTL_1 err=%d\n", err);
  return err;
 }

 err = devm_request_irq(&pdev->dev, key_press_irq, pwrkey_press_irq,
          IRQF_TRIGGER_RISING,
          "pmic8xxx_pwrkey_press", pwr);
 if (err) {
  dev_err(&pdev->dev, "Can't get %d IRQ for pwrkey: %d\n",
   key_press_irq, err);
  return err;
 }

 err = devm_request_irq(&pdev->dev, key_release_irq, pwrkey_release_irq,
          IRQF_TRIGGER_RISING,
          "pmic8xxx_pwrkey_release", pwr);
 if (err) {
  dev_err(&pdev->dev, "Can't get %d IRQ for pwrkey: %d\n",
   key_release_irq, err);
  return err;
 }

 err = input_register_device(pwr);
 if (err) {
  dev_err(&pdev->dev, "Can't register power key: %d\n", err);
  return err;
 }

 platform_set_drvdata(pdev, pwrkey);
 device_init_wakeup(&pdev->dev, 1);

 return 0;
}
