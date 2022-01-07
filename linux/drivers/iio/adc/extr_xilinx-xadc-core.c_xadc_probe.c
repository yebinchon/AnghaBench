
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct xadc {int irq; int* threshold; TYPE_2__* ops; void* convst_trigger; void* samplerate_trigger; void* clk; int zynq_unmask_work; void* base; int lock; int mutex; int completion; } ;
struct resource {int dummy; } ;
struct TYPE_13__ {int of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct of_device_id {TYPE_2__* data; } ;
struct TYPE_9__ {int of_node; TYPE_5__* parent; } ;
struct iio_dev {char* name; int num_channels; TYPE_4__* channels; int * info; int modes; TYPE_1__ dev; } ;
struct TYPE_11__ {char sign; } ;
struct TYPE_12__ {int scan_index; TYPE_3__ scan_type; } ;
struct TYPE_10__ {int flags; int (* setup ) (struct platform_device*,struct iio_dev*,int) ;int interrupt_handler; } ;


 unsigned int BIT (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int INDIO_DIRECT_MODE ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int XADC_CONF1_ALARM_MASK ;
 int XADC_FLAGS_BUFFERED ;
 int XADC_REG_CONF0 ;
 int XADC_REG_CONF1 ;
 int XADC_REG_INPUT_MODE (int) ;
 int XADC_REG_THRESHOLD (int) ;
 int cancel_delayed_work_sync (int *) ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_name (TYPE_5__*) ;
 void* devm_clk_get (TYPE_5__*,int *) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_5__*,int) ;
 void* devm_ioremap_resource (TYPE_5__*,struct resource*) ;
 int free_irq (int,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 int iio_pollfunc_store_time ;
 struct xadc* iio_priv (struct iio_dev*) ;
 int iio_trigger_free (void*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int iio_triggered_buffer_setup (struct iio_dev*,int *,int *,int *) ;
 int init_completion (int *) ;
 int kfree (TYPE_4__*) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int request_irq (int,int ,int ,int ,struct iio_dev*) ;
 int spin_lock_init (int *) ;
 int stub1 (struct platform_device*,struct iio_dev*,int) ;
 void* xadc_alloc_trigger (struct iio_dev*,char*) ;
 int xadc_buffer_ops ;
 int xadc_info ;
 int xadc_of_match_table ;
 int xadc_parse_dt (struct iio_dev*,int ,unsigned int*) ;
 int xadc_postdisable (struct iio_dev*) ;
 int xadc_read_adc_reg (struct xadc*,int ,int*) ;
 int xadc_trigger_handler ;
 int xadc_update_adc_reg (struct xadc*,int ,int ,int ) ;
 int xadc_write_adc_reg (struct xadc*,int ,unsigned int) ;
 int xadc_zynq_unmask_worker ;

__attribute__((used)) static int xadc_probe(struct platform_device *pdev)
{
 const struct of_device_id *id;
 struct iio_dev *indio_dev;
 unsigned int bipolar_mask;
 struct resource *mem;
 unsigned int conf0;
 struct xadc *xadc;
 int ret;
 int irq;
 int i;

 if (!pdev->dev.of_node)
  return -ENODEV;

 id = of_match_node(xadc_of_match_table, pdev->dev.of_node);
 if (!id)
  return -EINVAL;

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0)
  return -ENXIO;

 indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*xadc));
 if (!indio_dev)
  return -ENOMEM;

 xadc = iio_priv(indio_dev);
 xadc->ops = id->data;
 xadc->irq = irq;
 init_completion(&xadc->completion);
 mutex_init(&xadc->mutex);
 spin_lock_init(&xadc->lock);
 INIT_DELAYED_WORK(&xadc->zynq_unmask_work, xadc_zynq_unmask_worker);

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 xadc->base = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(xadc->base))
  return PTR_ERR(xadc->base);

 indio_dev->dev.parent = &pdev->dev;
 indio_dev->dev.of_node = pdev->dev.of_node;
 indio_dev->name = "xadc";
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &xadc_info;

 ret = xadc_parse_dt(indio_dev, pdev->dev.of_node, &conf0);
 if (ret)
  goto err_device_free;

 if (xadc->ops->flags & XADC_FLAGS_BUFFERED) {
  ret = iio_triggered_buffer_setup(indio_dev,
   &iio_pollfunc_store_time, &xadc_trigger_handler,
   &xadc_buffer_ops);
  if (ret)
   goto err_device_free;

  xadc->convst_trigger = xadc_alloc_trigger(indio_dev, "convst");
  if (IS_ERR(xadc->convst_trigger)) {
   ret = PTR_ERR(xadc->convst_trigger);
   goto err_triggered_buffer_cleanup;
  }
  xadc->samplerate_trigger = xadc_alloc_trigger(indio_dev,
   "samplerate");
  if (IS_ERR(xadc->samplerate_trigger)) {
   ret = PTR_ERR(xadc->samplerate_trigger);
   goto err_free_convst_trigger;
  }
 }

 xadc->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(xadc->clk)) {
  ret = PTR_ERR(xadc->clk);
  goto err_free_samplerate_trigger;
 }

 ret = clk_prepare_enable(xadc->clk);
 if (ret)
  goto err_free_samplerate_trigger;

 ret = request_irq(xadc->irq, xadc->ops->interrupt_handler, 0,
   dev_name(&pdev->dev), indio_dev);
 if (ret)
  goto err_clk_disable_unprepare;

 ret = xadc->ops->setup(pdev, indio_dev, xadc->irq);
 if (ret)
  goto err_free_irq;

 for (i = 0; i < 16; i++)
  xadc_read_adc_reg(xadc, XADC_REG_THRESHOLD(i),
   &xadc->threshold[i]);

 ret = xadc_write_adc_reg(xadc, XADC_REG_CONF0, conf0);
 if (ret)
  goto err_free_irq;

 bipolar_mask = 0;
 for (i = 0; i < indio_dev->num_channels; i++) {
  if (indio_dev->channels[i].scan_type.sign == 's')
   bipolar_mask |= BIT(indio_dev->channels[i].scan_index);
 }

 ret = xadc_write_adc_reg(xadc, XADC_REG_INPUT_MODE(0), bipolar_mask);
 if (ret)
  goto err_free_irq;
 ret = xadc_write_adc_reg(xadc, XADC_REG_INPUT_MODE(1),
  bipolar_mask >> 16);
 if (ret)
  goto err_free_irq;


 ret = xadc_update_adc_reg(xadc, XADC_REG_CONF1, XADC_CONF1_ALARM_MASK,
      XADC_CONF1_ALARM_MASK);
 if (ret)
  goto err_free_irq;


 for (i = 0; i < 16; i++) {




  if (i % 8 < 4 || i == 7)
   xadc->threshold[i] = 0xffff;
  else
   xadc->threshold[i] = 0;
  ret = xadc_write_adc_reg(xadc, XADC_REG_THRESHOLD(i),
   xadc->threshold[i]);
  if (ret)
   goto err_free_irq;
 }


 xadc_postdisable(indio_dev);

 ret = iio_device_register(indio_dev);
 if (ret)
  goto err_free_irq;

 platform_set_drvdata(pdev, indio_dev);

 return 0;

err_free_irq:
 free_irq(xadc->irq, indio_dev);
 cancel_delayed_work_sync(&xadc->zynq_unmask_work);
err_clk_disable_unprepare:
 clk_disable_unprepare(xadc->clk);
err_free_samplerate_trigger:
 if (xadc->ops->flags & XADC_FLAGS_BUFFERED)
  iio_trigger_free(xadc->samplerate_trigger);
err_free_convst_trigger:
 if (xadc->ops->flags & XADC_FLAGS_BUFFERED)
  iio_trigger_free(xadc->convst_trigger);
err_triggered_buffer_cleanup:
 if (xadc->ops->flags & XADC_FLAGS_BUFFERED)
  iio_triggered_buffer_cleanup(indio_dev);
err_device_free:
 kfree(indio_dev->channels);

 return ret;
}
