
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d32; int * d8; } ;
struct ad7768_state {TYPE_1__ data; int spi; } ;


 int AD7768_RD_FLAG_MSK (unsigned int) ;
 unsigned int be32_to_cpu (int ) ;
 int spi_write_then_read (int ,int *,int,int *,unsigned int) ;

__attribute__((used)) static int ad7768_spi_reg_read(struct ad7768_state *st, unsigned int addr,
          unsigned int len)
{
 unsigned int shift;
 int ret;

 shift = 32 - (8 * len);
 st->data.d8[0] = AD7768_RD_FLAG_MSK(addr);

 ret = spi_write_then_read(st->spi, st->data.d8, 1,
      &st->data.d32, len);
 if (ret < 0)
  return ret;

 return (be32_to_cpu(st->data.d32) >> shift);
}
