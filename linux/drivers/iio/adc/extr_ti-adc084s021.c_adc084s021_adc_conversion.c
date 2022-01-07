
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int len; } ;
struct adc084s021 {int * rx_buf; int message; int spi; TYPE_1__ spi_trans; } ;


 int spi_sync (int ,int *) ;

__attribute__((used)) static int adc084s021_adc_conversion(struct adc084s021 *adc, void *data)
{
 int n_words = (adc->spi_trans.len >> 1) - 1;
 int ret, i = 0;
 u16 *p = data;


 ret = spi_sync(adc->spi, &adc->message);
 if (ret < 0)
  return ret;

 for (; i < n_words; i++)
  *(p + i) = adc->rx_buf[i + 1];

 return ret;
}
