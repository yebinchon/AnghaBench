
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct octeon_i2c {scalar_t__ twsi_base; } ;


 scalar_t__ SW_TWSI (struct octeon_i2c*) ;
 int SW_TWSI_V ;
 int __raw_readq (scalar_t__) ;
 int __raw_writeq (int,scalar_t__) ;

__attribute__((used)) static inline void octeon_i2c_reg_write(struct octeon_i2c *i2c, u64 eop_reg, u8 data)
{
 int tries = 1000;
 u64 tmp;

 __raw_writeq(SW_TWSI_V | eop_reg | data, i2c->twsi_base + SW_TWSI(i2c));
 do {
  tmp = __raw_readq(i2c->twsi_base + SW_TWSI(i2c));
  if (--tries < 0)
   return;
 } while ((tmp & SW_TWSI_V) != 0);
}
