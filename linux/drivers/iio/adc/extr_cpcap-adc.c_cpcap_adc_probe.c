
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int parent; int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_10__ {int of_node; TYPE_2__* parent; } ;
struct iio_dev {int modes; int * info; int name; int num_channels; int channels; TYPE_1__ dev; } ;
struct cpcap_adc {scalar_t__ irq; int vendor; int reg; TYPE_2__* dev; int wq_data_avail; int lock; scalar_t__ ato; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_BUFFER_SOFTWARE ;
 int INDIO_DIRECT_MODE ;
 int IRQF_TRIGGER_NONE ;
 int cpcap_adc_calibrate (struct cpcap_adc*) ;
 int cpcap_adc_channels ;
 int cpcap_adc_id_table ;
 int cpcap_adc_info ;
 int cpcap_adc_irq_thread ;
 int cpcap_get_vendor (TYPE_2__*,int ,int *) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_get_regmap (int ,int *) ;
 int dev_info (TYPE_2__*,char*) ;
 int dev_name (TYPE_2__*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int devm_iio_device_register (TYPE_2__*,struct iio_dev*) ;
 int devm_request_threaded_irq (TYPE_2__*,scalar_t__,int *,int ,int ,char*,struct iio_dev*) ;
 struct cpcap_adc* iio_priv (struct iio_dev*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 int of_match_ptr (int ) ;
 scalar_t__ platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct iio_dev*) ;

__attribute__((used)) static int cpcap_adc_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 struct cpcap_adc *ddata;
 struct iio_dev *indio_dev;
 int error;

 match = of_match_device(of_match_ptr(cpcap_adc_id_table),
    &pdev->dev);
 if (!match)
  return -EINVAL;

 if (!match->data) {
  dev_err(&pdev->dev, "no configuration data found\n");

  return -ENODEV;
 }

 indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*ddata));
 if (!indio_dev) {
  dev_err(&pdev->dev, "failed to allocate iio device\n");

  return -ENOMEM;
 }
 ddata = iio_priv(indio_dev);
 ddata->ato = match->data;
 ddata->dev = &pdev->dev;

 mutex_init(&ddata->lock);
 init_waitqueue_head(&ddata->wq_data_avail);

 indio_dev->modes = INDIO_DIRECT_MODE | INDIO_BUFFER_SOFTWARE;
 indio_dev->dev.parent = &pdev->dev;
 indio_dev->dev.of_node = pdev->dev.of_node;
 indio_dev->channels = cpcap_adc_channels;
 indio_dev->num_channels = ARRAY_SIZE(cpcap_adc_channels);
 indio_dev->name = dev_name(&pdev->dev);
 indio_dev->info = &cpcap_adc_info;

 ddata->reg = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!ddata->reg)
  return -ENODEV;

 error = cpcap_get_vendor(ddata->dev, ddata->reg, &ddata->vendor);
 if (error)
  return error;

 platform_set_drvdata(pdev, indio_dev);

 ddata->irq = platform_get_irq_byname(pdev, "adcdone");
 if (ddata->irq < 0)
  return -ENODEV;

 error = devm_request_threaded_irq(&pdev->dev, ddata->irq, ((void*)0),
       cpcap_adc_irq_thread,
       IRQF_TRIGGER_NONE,
       "cpcap-adc", indio_dev);
 if (error) {
  dev_err(&pdev->dev, "could not get irq: %i\n",
   error);

  return error;
 }

 error = cpcap_adc_calibrate(ddata);
 if (error)
  return error;

 dev_info(&pdev->dev, "CPCAP ADC device probed\n");

 return devm_iio_device_register(&pdev->dev, indio_dev);
}
