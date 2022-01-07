
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spi_device {int dummy; } ;
struct max5481_data {int* msg; struct spi_device* spi; } ;


 int EIO ;



 int spi_write (struct spi_device*,int*,int) ;

__attribute__((used)) static int max5481_write_cmd(struct max5481_data *data, u8 cmd, u16 val)
{
 struct spi_device *spi = data->spi;

 data->msg[0] = cmd;

 switch (cmd) {
 case 128:
  data->msg[1] = val >> 2;
  data->msg[2] = (val & 0x3) << 6;
  return spi_write(spi, data->msg, 3);

 case 130:
 case 129:
  return spi_write(spi, data->msg, 1);

 default:
  return -EIO;
 }
}
