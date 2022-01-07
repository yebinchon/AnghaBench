
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adc128 {int* buffer; int lock; int spi; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_read (int ,int**,int) ;
 int spi_write (int ,int**,int) ;

__attribute__((used)) static int adc128_adc_conversion(struct adc128 *adc, u8 channel)
{
 int ret;

 mutex_lock(&adc->lock);

 adc->buffer[0] = channel << 3;
 adc->buffer[1] = 0;

 ret = spi_write(adc->spi, &adc->buffer, 2);
 if (ret < 0) {
  mutex_unlock(&adc->lock);
  return ret;
 }

 ret = spi_read(adc->spi, &adc->buffer, 2);

 mutex_unlock(&adc->lock);

 if (ret < 0)
  return ret;

 return ((adc->buffer[0] << 8 | adc->buffer[1]) & 0xFFF);
}
