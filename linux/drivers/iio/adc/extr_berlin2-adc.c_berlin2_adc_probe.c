
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* driver; int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {TYPE_3__* parent; } ;
struct iio_dev {int num_channels; int channels; int * info; int modes; int name; TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct berlin2_adc_priv {int regmap; int lock; int wq; } ;
struct TYPE_6__ {int name; } ;


 int ARRAY_SIZE (int ) ;
 int BERLIN2_SM_CTRL ;
 int BERLIN2_SM_CTRL_ADC_POWER ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int berlin2_adc_channels ;
 int berlin2_adc_info ;
 int berlin2_adc_irq ;
 int berlin2_adc_tsen_irq ;
 int dev_name (TYPE_3__*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_3__*,int) ;
 int devm_request_irq (TYPE_3__*,int,int ,int ,int ,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct berlin2_adc_priv* iio_priv (struct iio_dev*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 struct device_node* of_get_parent (int ) ;
 int of_node_put (struct device_node*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int syscon_node_to_regmap (struct device_node*) ;

__attribute__((used)) static int berlin2_adc_probe(struct platform_device *pdev)
{
 struct iio_dev *indio_dev;
 struct berlin2_adc_priv *priv;
 struct device_node *parent_np = of_get_parent(pdev->dev.of_node);
 int irq, tsen_irq;
 int ret;

 indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*priv));
 if (!indio_dev)
  return -ENOMEM;

 priv = iio_priv(indio_dev);
 platform_set_drvdata(pdev, indio_dev);

 priv->regmap = syscon_node_to_regmap(parent_np);
 of_node_put(parent_np);
 if (IS_ERR(priv->regmap))
  return PTR_ERR(priv->regmap);

 irq = platform_get_irq_byname(pdev, "adc");
 if (irq < 0)
  return irq;

 tsen_irq = platform_get_irq_byname(pdev, "tsen");
 if (tsen_irq < 0)
  return tsen_irq;

 ret = devm_request_irq(&pdev->dev, irq, berlin2_adc_irq, 0,
          pdev->dev.driver->name, indio_dev);
 if (ret)
  return ret;

 ret = devm_request_irq(&pdev->dev, tsen_irq, berlin2_adc_tsen_irq,
          0, pdev->dev.driver->name, indio_dev);
 if (ret)
  return ret;

 init_waitqueue_head(&priv->wq);
 mutex_init(&priv->lock);

 indio_dev->dev.parent = &pdev->dev;
 indio_dev->name = dev_name(&pdev->dev);
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->info = &berlin2_adc_info;

 indio_dev->channels = berlin2_adc_channels;
 indio_dev->num_channels = ARRAY_SIZE(berlin2_adc_channels);


 regmap_update_bits(priv->regmap, BERLIN2_SM_CTRL,
      BERLIN2_SM_CTRL_ADC_POWER,
      BERLIN2_SM_CTRL_ADC_POWER);

 ret = iio_device_register(indio_dev);
 if (ret) {

  regmap_update_bits(priv->regmap, BERLIN2_SM_CTRL,
       BERLIN2_SM_CTRL_ADC_POWER, 0);
  return ret;
 }

 return 0;
}
