
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max31856_data {int spi; } ;


 int MAX31856_RD_WR_BIT ;
 int spi_write (int ,int*,int) ;

__attribute__((used)) static int max31856_write(struct max31856_data *data, u8 reg,
     unsigned int val)
{
 u8 buf[2];

 buf[0] = reg | (MAX31856_RD_WR_BIT);
 buf[1] = val;

 return spi_write(data->spi, buf, 2);
}
