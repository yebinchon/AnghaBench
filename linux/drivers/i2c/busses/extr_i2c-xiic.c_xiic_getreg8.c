
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xiic_i2c {scalar_t__ endianness; scalar_t__ base; } ;


 scalar_t__ LITTLE ;
 int ioread8 (scalar_t__) ;

__attribute__((used)) static inline u8 xiic_getreg8(struct xiic_i2c *i2c, int reg)
{
 u8 ret;

 if (i2c->endianness == LITTLE)
  ret = ioread8(i2c->base + reg);
 else
  ret = ioread8(i2c->base + reg + 3);
 return ret;
}
