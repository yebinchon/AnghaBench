
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_i2c {scalar_t__ twsi_base; } ;


 scalar_t__ SW_TWSI (struct octeon_i2c*) ;
 int SW_TWSI_V ;
 int __raw_readq (scalar_t__) ;

__attribute__((used)) static bool octeon_i2c_hlc_test_valid(struct octeon_i2c *i2c)
{
 return (__raw_readq(i2c->twsi_base + SW_TWSI(i2c)) & SW_TWSI_V) == 0;
}
