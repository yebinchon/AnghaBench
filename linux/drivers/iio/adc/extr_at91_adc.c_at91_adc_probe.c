
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u32 ;
struct resource {int dummy; } ;
struct TYPE_15__ {TYPE_2__* driver; scalar_t__ of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_11__ {TYPE_5__* parent; } ;
struct iio_dev {int * info; int modes; int name; TYPE_1__ dev; } ;
struct at91_adc_state {scalar_t__ irq; unsigned int sample_hold_time; void* clk; void* adc_clk; int touchscreen_type; int lock; int wq_data_avail; scalar_t__ sleep_mode; scalar_t__ low_res; TYPE_4__* registers; int startup_time; TYPE_3__* caps; void* reg_base; } ;
struct TYPE_14__ {int mr_prescal_mask; int mr_startup_mask; } ;
struct TYPE_13__ {unsigned int (* calc_startup_ticks ) (int ,unsigned int) ;scalar_t__ has_tsmr; } ;
struct TYPE_12__ {int name; } ;


 int AT91_ADC_CR ;
 int AT91_ADC_IDR ;
 int AT91_ADC_LOWRES ;
 int AT91_ADC_MR ;
 int AT91_ADC_PRESCAL_ (unsigned int) ;
 int AT91_ADC_SHTIM ;
 int AT91_ADC_SHTIM_ (unsigned int) ;
 int AT91_ADC_SLEEP ;
 int AT91_ADC_STARTUP_ (unsigned int) ;
 int AT91_ADC_SWRST ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int at91_adc_9x5_interrupt ;
 int at91_adc_buffer_init (struct iio_dev*) ;
 int at91_adc_buffer_remove (struct iio_dev*) ;
 int at91_adc_channel_init (struct iio_dev*) ;
 int at91_adc_info ;
 int at91_adc_probe_dt (struct at91_adc_state*,struct platform_device*) ;
 int at91_adc_probe_pdata (struct at91_adc_state*,struct platform_device*) ;
 int at91_adc_rl_interrupt ;
 int at91_adc_trigger_init (struct iio_dev*) ;
 int at91_adc_trigger_remove (struct iio_dev*) ;
 int at91_adc_writel (struct at91_adc_state*,int ,int) ;
 int at91_ts_hw_init (struct at91_adc_state*,unsigned int) ;
 int at91_ts_register (struct at91_adc_state*,struct platform_device*) ;
 int at91_ts_unregister (struct at91_adc_state*) ;
 int clk_disable_unprepare (void*) ;
 unsigned int clk_get_rate (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_dbg (TYPE_5__*,char*,unsigned int,unsigned int) ;
 int dev_err (TYPE_5__*,char*) ;
 int dev_name (TYPE_5__*) ;
 void* devm_clk_get (TYPE_5__*,char*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_5__*,int) ;
 void* devm_ioremap_resource (TYPE_5__*,struct resource*) ;
 int free_irq (scalar_t__,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int request_irq (scalar_t__,int ,int ,int ,struct iio_dev*) ;
 unsigned int round_up (unsigned int,int) ;
 unsigned int stub1 (int ,unsigned int) ;

__attribute__((used)) static int at91_adc_probe(struct platform_device *pdev)
{
 unsigned int prsc, mstrclk, ticks, adc_clk, adc_clk_khz, shtim;
 int ret;
 struct iio_dev *idev;
 struct at91_adc_state *st;
 struct resource *res;
 u32 reg;

 idev = devm_iio_device_alloc(&pdev->dev, sizeof(struct at91_adc_state));
 if (!idev)
  return -ENOMEM;

 st = iio_priv(idev);

 if (pdev->dev.of_node)
  ret = at91_adc_probe_dt(st, pdev);
 else
  ret = at91_adc_probe_pdata(st, pdev);

 if (ret) {
  dev_err(&pdev->dev, "No platform data available.\n");
  return -EINVAL;
 }

 platform_set_drvdata(pdev, idev);

 idev->dev.parent = &pdev->dev;
 idev->name = dev_name(&pdev->dev);
 idev->modes = INDIO_DIRECT_MODE;
 idev->info = &at91_adc_info;

 st->irq = platform_get_irq(pdev, 0);
 if (st->irq < 0)
  return -ENODEV;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 st->reg_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(st->reg_base))
  return PTR_ERR(st->reg_base);





 at91_adc_writel(st, AT91_ADC_CR, AT91_ADC_SWRST);
 at91_adc_writel(st, AT91_ADC_IDR, 0xFFFFFFFF);

 if (st->caps->has_tsmr)
  ret = request_irq(st->irq, at91_adc_9x5_interrupt, 0,
      pdev->dev.driver->name, idev);
 else
  ret = request_irq(st->irq, at91_adc_rl_interrupt, 0,
      pdev->dev.driver->name, idev);
 if (ret) {
  dev_err(&pdev->dev, "Failed to allocate IRQ.\n");
  return ret;
 }

 st->clk = devm_clk_get(&pdev->dev, "adc_clk");
 if (IS_ERR(st->clk)) {
  dev_err(&pdev->dev, "Failed to get the clock.\n");
  ret = PTR_ERR(st->clk);
  goto error_free_irq;
 }

 ret = clk_prepare_enable(st->clk);
 if (ret) {
  dev_err(&pdev->dev,
   "Could not prepare or enable the clock.\n");
  goto error_free_irq;
 }

 st->adc_clk = devm_clk_get(&pdev->dev, "adc_op_clk");
 if (IS_ERR(st->adc_clk)) {
  dev_err(&pdev->dev, "Failed to get the ADC clock.\n");
  ret = PTR_ERR(st->adc_clk);
  goto error_disable_clk;
 }

 ret = clk_prepare_enable(st->adc_clk);
 if (ret) {
  dev_err(&pdev->dev,
   "Could not prepare or enable the ADC clock.\n");
  goto error_disable_clk;
 }






 mstrclk = clk_get_rate(st->clk);
 adc_clk = clk_get_rate(st->adc_clk);
 adc_clk_khz = adc_clk / 1000;

 dev_dbg(&pdev->dev, "Master clock is set as: %d Hz, adc_clk should set as: %d Hz\n",
  mstrclk, adc_clk);

 prsc = (mstrclk / (2 * adc_clk)) - 1;

 if (!st->startup_time) {
  dev_err(&pdev->dev, "No startup time available.\n");
  ret = -EINVAL;
  goto error_disable_adc_clk;
 }
 ticks = (*st->caps->calc_startup_ticks)(st->startup_time, adc_clk_khz);






 if (st->sample_hold_time > 0)
  shtim = round_up((st->sample_hold_time * adc_clk_khz / 1000)
     - 1, 1);
 else
  shtim = 0;

 reg = AT91_ADC_PRESCAL_(prsc) & st->registers->mr_prescal_mask;
 reg |= AT91_ADC_STARTUP_(ticks) & st->registers->mr_startup_mask;
 if (st->low_res)
  reg |= AT91_ADC_LOWRES;
 if (st->sleep_mode)
  reg |= AT91_ADC_SLEEP;
 reg |= AT91_ADC_SHTIM_(shtim) & AT91_ADC_SHTIM;
 at91_adc_writel(st, AT91_ADC_MR, reg);


 ret = at91_adc_channel_init(idev);
 if (ret < 0) {
  dev_err(&pdev->dev, "Couldn't initialize the channels.\n");
  goto error_disable_adc_clk;
 }

 init_waitqueue_head(&st->wq_data_avail);
 mutex_init(&st->lock);






 if (!st->touchscreen_type) {
  ret = at91_adc_buffer_init(idev);
  if (ret < 0) {
   dev_err(&pdev->dev, "Couldn't initialize the buffer.\n");
   goto error_disable_adc_clk;
  }

  ret = at91_adc_trigger_init(idev);
  if (ret < 0) {
   dev_err(&pdev->dev, "Couldn't setup the triggers.\n");
   at91_adc_buffer_remove(idev);
   goto error_disable_adc_clk;
  }
 } else {
  ret = at91_ts_register(st, pdev);
  if (ret)
   goto error_disable_adc_clk;

  at91_ts_hw_init(st, adc_clk_khz);
 }

 ret = iio_device_register(idev);
 if (ret < 0) {
  dev_err(&pdev->dev, "Couldn't register the device.\n");
  goto error_iio_device_register;
 }

 return 0;

error_iio_device_register:
 if (!st->touchscreen_type) {
  at91_adc_trigger_remove(idev);
  at91_adc_buffer_remove(idev);
 } else {
  at91_ts_unregister(st);
 }
error_disable_adc_clk:
 clk_disable_unprepare(st->adc_clk);
error_disable_clk:
 clk_disable_unprepare(st->clk);
error_free_irq:
 free_irq(st->irq, idev);
 return ret;
}
