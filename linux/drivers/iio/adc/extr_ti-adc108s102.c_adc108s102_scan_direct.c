
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adc108s102_state {int * rx_buf; int scan_single_msg; int spi; int * tx_buf; } ;


 int ADC108S102_CMD (unsigned int) ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int ) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int adc108s102_scan_direct(struct adc108s102_state *st, unsigned int ch)
{
 int ret;

 st->tx_buf[0] = cpu_to_be16(ADC108S102_CMD(ch));
 ret = spi_sync(st->spi, &st->scan_single_msg);
 if (ret)
  return ret;


 return be16_to_cpu(st->rx_buf[1]);
}
