
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max31856_data {int spi; } ;


 int spi_write_then_read (int ,int *,int,int *,unsigned int) ;

__attribute__((used)) static int max31856_read(struct max31856_data *data, u8 reg,
    u8 val[], unsigned int read_size)
{
 return spi_write_then_read(data->spi, &reg, 1, val, read_size);
}
