
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dfsdm_adc {unsigned long smask; int nconv; } ;
struct iio_dev {int dev; int masklength; } ;


 int bitmap_weight (unsigned long const*,int ) ;
 int dev_dbg (int *,char*,int ,unsigned long const) ;
 struct stm32_dfsdm_adc* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int stm32_dfsdm_update_scan_mode(struct iio_dev *indio_dev,
     const unsigned long *scan_mask)
{
 struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);

 adc->nconv = bitmap_weight(scan_mask, indio_dev->masklength);
 adc->smask = *scan_mask;

 dev_dbg(&indio_dev->dev, "nconv=%d mask=%lx\n", adc->nconv, *scan_mask);

 return 0;
}
