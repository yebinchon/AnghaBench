
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct twl4030_madc_platform_data {int irq_line; } ;
struct twl4030_madc_data {int use_second_irq; int usb3v1; TYPE_2__* dev; int lock; int isr; int imr; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_9__ {struct device_node* of_node; TYPE_2__* parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; TYPE_1__ dev; int name; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int TWL4030_BCI_BCICTL1 ;
 int TWL4030_BCI_MESBAT ;
 int TWL4030_GPBR1_MADC_HFCLK_EN ;
 int TWL4030_MADC_IMR1 ;
 int TWL4030_MADC_IMR2 ;
 int TWL4030_MADC_ISR1 ;
 int TWL4030_MADC_ISR2 ;
 int TWL4030_MODULE_INTBR ;
 int TWL4030_REG_GPBR1 ;
 int TWL4030_USB_CARKIT_ANA_CTRL ;
 int TWL4030_USB_SEL_MADC_MCPC ;
 int TWL_MODULE_MAIN_CHARGE ;
 int TWL_MODULE_USB ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct twl4030_madc_platform_data* dev_get_platdata (TYPE_2__*) ;
 int dev_info (TYPE_2__*,char*) ;
 int dev_name (TYPE_2__*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int devm_regulator_get (TYPE_2__*,char*) ;
 int devm_request_threaded_irq (TYPE_2__*,int,int *,int ,int,char*,struct twl4030_madc_data*) ;
 int iio_device_register (struct iio_dev*) ;
 struct twl4030_madc_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 struct twl4030_madc_data* twl4030_madc ;
 int twl4030_madc_iio_channels ;
 int twl4030_madc_iio_info ;
 int twl4030_madc_set_current_generator (struct twl4030_madc_data*,int ,int) ;
 int twl4030_madc_set_power (struct twl4030_madc_data*,int) ;
 int twl4030_madc_threaded_irq_handler ;
 int twl_i2c_read_u8 (int ,int*,int ) ;
 int twl_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static int twl4030_madc_probe(struct platform_device *pdev)
{
 struct twl4030_madc_data *madc;
 struct twl4030_madc_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct device_node *np = pdev->dev.of_node;
 int irq, ret;
 u8 regval;
 struct iio_dev *iio_dev = ((void*)0);

 if (!pdata && !np) {
  dev_err(&pdev->dev, "neither platform data nor Device Tree node available\n");
  return -EINVAL;
 }

 iio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*madc));
 if (!iio_dev) {
  dev_err(&pdev->dev, "failed allocating iio device\n");
  return -ENOMEM;
 }

 madc = iio_priv(iio_dev);
 madc->dev = &pdev->dev;

 iio_dev->name = dev_name(&pdev->dev);
 iio_dev->dev.parent = &pdev->dev;
 iio_dev->dev.of_node = pdev->dev.of_node;
 iio_dev->info = &twl4030_madc_iio_info;
 iio_dev->modes = INDIO_DIRECT_MODE;
 iio_dev->channels = twl4030_madc_iio_channels;
 iio_dev->num_channels = ARRAY_SIZE(twl4030_madc_iio_channels);






 if (pdata)
  madc->use_second_irq = (pdata->irq_line != 1);
 else
  madc->use_second_irq = of_property_read_bool(np,
           "ti,system-uses-second-madc-irq");

 madc->imr = madc->use_second_irq ? TWL4030_MADC_IMR2 :
        TWL4030_MADC_IMR1;
 madc->isr = madc->use_second_irq ? TWL4030_MADC_ISR2 :
        TWL4030_MADC_ISR1;

 ret = twl4030_madc_set_power(madc, 1);
 if (ret < 0)
  return ret;
 ret = twl4030_madc_set_current_generator(madc, 0, 1);
 if (ret < 0)
  goto err_current_generator;

 ret = twl_i2c_read_u8(TWL_MODULE_MAIN_CHARGE,
         &regval, TWL4030_BCI_BCICTL1);
 if (ret) {
  dev_err(&pdev->dev, "unable to read reg BCI CTL1 0x%X\n",
   TWL4030_BCI_BCICTL1);
  goto err_i2c;
 }
 regval |= TWL4030_BCI_MESBAT;
 ret = twl_i2c_write_u8(TWL_MODULE_MAIN_CHARGE,
          regval, TWL4030_BCI_BCICTL1);
 if (ret) {
  dev_err(&pdev->dev, "unable to write reg BCI Ctl1 0x%X\n",
   TWL4030_BCI_BCICTL1);
  goto err_i2c;
 }


 ret = twl_i2c_read_u8(TWL4030_MODULE_INTBR, &regval, TWL4030_REG_GPBR1);
 if (ret) {
  dev_err(&pdev->dev, "unable to read reg GPBR1 0x%X\n",
    TWL4030_REG_GPBR1);
  goto err_i2c;
 }


 if (!(regval & TWL4030_GPBR1_MADC_HFCLK_EN)) {
  dev_info(&pdev->dev, "clk disabled, enabling\n");
  regval |= TWL4030_GPBR1_MADC_HFCLK_EN;
  ret = twl_i2c_write_u8(TWL4030_MODULE_INTBR, regval,
           TWL4030_REG_GPBR1);
  if (ret) {
   dev_err(&pdev->dev, "unable to write reg GPBR1 0x%X\n",
     TWL4030_REG_GPBR1);
   goto err_i2c;
  }
 }

 platform_set_drvdata(pdev, iio_dev);
 mutex_init(&madc->lock);

 irq = platform_get_irq(pdev, 0);
 ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
       twl4030_madc_threaded_irq_handler,
       IRQF_TRIGGER_RISING | IRQF_ONESHOT,
       "twl4030_madc", madc);
 if (ret) {
  dev_err(&pdev->dev, "could not request irq\n");
  goto err_i2c;
 }
 twl4030_madc = madc;


 ret = twl_i2c_read_u8(TWL_MODULE_USB, &regval,
   TWL4030_USB_CARKIT_ANA_CTRL);
 if (ret) {
  dev_err(&pdev->dev, "unable to read reg CARKIT_ANA_CTRL  0x%X\n",
    TWL4030_USB_CARKIT_ANA_CTRL);
  goto err_i2c;
 }
 regval |= TWL4030_USB_SEL_MADC_MCPC;
 ret = twl_i2c_write_u8(TWL_MODULE_USB, regval,
     TWL4030_USB_CARKIT_ANA_CTRL);
 if (ret) {
  dev_err(&pdev->dev, "unable to write reg CARKIT_ANA_CTRL 0x%X\n",
    TWL4030_USB_CARKIT_ANA_CTRL);
  goto err_i2c;
 }


 madc->usb3v1 = devm_regulator_get(madc->dev, "vusb3v1");
 if (IS_ERR(madc->usb3v1)) {
  ret = -ENODEV;
  goto err_i2c;
 }

 ret = regulator_enable(madc->usb3v1);
 if (ret) {
  dev_err(madc->dev, "could not enable 3v1 bias regulator\n");
  goto err_i2c;
 }

 ret = iio_device_register(iio_dev);
 if (ret) {
  dev_err(&pdev->dev, "could not register iio device\n");
  goto err_usb3v1;
 }

 return 0;

err_usb3v1:
 regulator_disable(madc->usb3v1);
err_i2c:
 twl4030_madc_set_current_generator(madc, 0, 0);
err_current_generator:
 twl4030_madc_set_power(madc, 0);
 return ret;
}
