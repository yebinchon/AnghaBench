
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7124_state {int sd; } ;


 int ad_sd_read_reg (int *,unsigned int,unsigned int,unsigned int*) ;
 int ad_sd_write_reg (int *,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int ad7124_spi_write_mask(struct ad7124_state *st,
     unsigned int addr,
     unsigned long mask,
     unsigned int val,
     unsigned int bytes)
{
 unsigned int readval;
 int ret;

 ret = ad_sd_read_reg(&st->sd, addr, bytes, &readval);
 if (ret < 0)
  return ret;

 readval &= ~mask;
 readval |= val;

 return ad_sd_write_reg(&st->sd, addr, bytes, readval);
}
