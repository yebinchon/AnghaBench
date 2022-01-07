
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct da9052_hwmon {int tsiref_mv; scalar_t__ tsiref; TYPE_1__* da9052; scalar_t__ tsi_as_adc; int tsidone; int hwmon_lock; } ;
struct TYPE_6__ {struct device* dev; } ;


 int DA9052_ADCCONT_ADCMODE ;
 int DA9052_ADC_CONT_REG ;
 int DA9052_IRQ_TSIREADY ;
 int DA9052_TSI_CONT_A_REG ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int da9052_free_irq (TYPE_1__*,int ,struct da9052_hwmon*) ;
 int da9052_groups ;
 int da9052_reg_update (TYPE_1__*,int ,int ,int ) ;
 int da9052_reg_write (TYPE_1__*,int ,int) ;
 int da9052_request_irq (TYPE_1__*,int ,char*,int ,struct da9052_hwmon*) ;
 int da9052_tsi_datardy_irq ;
 int dev_err (struct device*,char*,int) ;
 TYPE_1__* dev_get_drvdata (int ) ;
 scalar_t__ device_property_read_bool (int ,char*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,char*,struct da9052_hwmon*,int ) ;
 struct da9052_hwmon* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ devm_regulator_get (int ,char*) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct da9052_hwmon*) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int regulator_get_voltage (scalar_t__) ;

__attribute__((used)) static int da9052_hwmon_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct da9052_hwmon *hwmon;
 struct device *hwmon_dev;
 int err;

 hwmon = devm_kzalloc(dev, sizeof(struct da9052_hwmon), GFP_KERNEL);
 if (!hwmon)
  return -ENOMEM;

 platform_set_drvdata(pdev, hwmon);

 mutex_init(&hwmon->hwmon_lock);
 hwmon->da9052 = dev_get_drvdata(pdev->dev.parent);

 init_completion(&hwmon->tsidone);

 hwmon->tsi_as_adc =
  device_property_read_bool(pdev->dev.parent, "dlg,tsi-as-adc");

 if (hwmon->tsi_as_adc) {
  hwmon->tsiref = devm_regulator_get(pdev->dev.parent, "tsiref");
  if (IS_ERR(hwmon->tsiref)) {
   err = PTR_ERR(hwmon->tsiref);
   dev_err(&pdev->dev, "failed to get tsiref: %d", err);
   return err;
  }

  err = regulator_enable(hwmon->tsiref);
  if (err)
   return err;

  hwmon->tsiref_mv = regulator_get_voltage(hwmon->tsiref);
  if (hwmon->tsiref_mv < 0) {
   err = hwmon->tsiref_mv;
   goto exit_regulator;
  }


  hwmon->tsiref_mv /= 1000;


  if (hwmon->tsiref_mv < 1800 || hwmon->tsiref_mv > 2600) {
   dev_err(hwmon->da9052->dev, "invalid TSIREF voltage: %d",
    hwmon->tsiref_mv);
   err = -ENXIO;
   goto exit_regulator;
  }


  da9052_reg_write(hwmon->da9052, DA9052_TSI_CONT_A_REG, 0x00);


  da9052_reg_update(hwmon->da9052, DA9052_ADC_CONT_REG,
       DA9052_ADCCONT_ADCMODE,
       DA9052_ADCCONT_ADCMODE);

  err = da9052_request_irq(hwmon->da9052, DA9052_IRQ_TSIREADY,
      "tsiready-irq", da9052_tsi_datardy_irq,
      hwmon);
  if (err) {
   dev_err(&pdev->dev, "Failed to register TSIRDY IRQ: %d",
    err);
   goto exit_regulator;
  }
 }

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, "da9052",
          hwmon,
          da9052_groups);
 err = PTR_ERR_OR_ZERO(hwmon_dev);
 if (err)
  goto exit_irq;

 return 0;

exit_irq:
 if (hwmon->tsi_as_adc)
  da9052_free_irq(hwmon->da9052, DA9052_IRQ_TSIREADY, hwmon);
exit_regulator:
 if (hwmon->tsiref)
  regulator_disable(hwmon->tsiref);

 return err;
}
