
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct octeon_i2c {scalar_t__ twsi_base; } ;


 int EIO ;
 scalar_t__ SW_TWSI (struct octeon_i2c*) ;
 int SW_TWSI_R ;
 int SW_TWSI_V ;
 int __raw_readq (scalar_t__) ;
 int __raw_writeq (int,scalar_t__) ;

__attribute__((used)) static inline int octeon_i2c_reg_read(struct octeon_i2c *i2c, u64 eop_reg,
          int *error)
{
 int tries = 1000;
 u64 tmp;

 __raw_writeq(SW_TWSI_V | eop_reg | SW_TWSI_R, i2c->twsi_base + SW_TWSI(i2c));
 do {
  tmp = __raw_readq(i2c->twsi_base + SW_TWSI(i2c));
  if (--tries < 0) {

   if (error)
    *error = -EIO;
   return 0;
  }
 } while ((tmp & SW_TWSI_V) != 0);

 return tmp & 0xFF;
}
