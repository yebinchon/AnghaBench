
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7923_state {int settings; int * rx_buf; int scan_single_msg; int spi; int * tx_buf; } ;


 int AD7923_CHANNEL_WRITE (unsigned int) ;
 int AD7923_SEQUENCE_OFF ;
 int AD7923_SEQUENCE_WRITE (int ) ;
 int AD7923_SHIFT_REGISTER ;
 int AD7923_WRITE_CR ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int ad7923_scan_direct(struct ad7923_state *st, unsigned ch)
{
 int ret, cmd;

 cmd = AD7923_WRITE_CR | AD7923_CHANNEL_WRITE(ch) |
  AD7923_SEQUENCE_WRITE(AD7923_SEQUENCE_OFF) |
  st->settings;
 cmd <<= AD7923_SHIFT_REGISTER;
 st->tx_buf[0] = cpu_to_be16(cmd);

 ret = spi_sync(st->spi, &st->scan_single_msg);
 if (ret)
  return ret;

 return be16_to_cpu(st->rx_buf[0]);
}
