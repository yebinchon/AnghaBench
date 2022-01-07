
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int scan_bytes; } ;
struct cc10001_adc_device {int buf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct cc10001_adc_device* iio_priv (struct iio_dev*) ;
 int kfree (int ) ;
 int kmalloc (int ,int ) ;

__attribute__((used)) static int cc10001_update_scan_mode(struct iio_dev *indio_dev,
        const unsigned long *scan_mask)
{
 struct cc10001_adc_device *adc_dev = iio_priv(indio_dev);

 kfree(adc_dev->buf);
 adc_dev->buf = kmalloc(indio_dev->scan_bytes, GFP_KERNEL);
 if (!adc_dev->buf)
  return -ENOMEM;

 return 0;
}
