
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int watermark; } ;
struct at91_adc_state {TYPE_1__ dma_st; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t at91_adc_get_watermark(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct at91_adc_state *st = iio_priv(indio_dev);

 return scnprintf(buf, PAGE_SIZE, "%d\n", st->dma_st.watermark);
}
