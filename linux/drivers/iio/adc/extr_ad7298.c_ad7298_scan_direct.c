
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7298_state {unsigned int ext_ref; int * rx_buf; int scan_single_msg; int spi; int * tx_buf; } ;


 unsigned int AD7298_CH (int ) ;
 unsigned int AD7298_WRITE ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (unsigned int) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int ad7298_scan_direct(struct ad7298_state *st, unsigned ch)
{
 int ret;
 st->tx_buf[0] = cpu_to_be16(AD7298_WRITE | st->ext_ref |
       (AD7298_CH(0) >> ch));

 ret = spi_sync(st->spi, &st->scan_single_msg);
 if (ret)
  return ret;

 return be16_to_cpu(st->rx_buf[0]);
}
