
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xiic_i2c {scalar_t__ endianness; scalar_t__ base; } ;


 scalar_t__ LITTLE ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static inline void xiic_setreg8(struct xiic_i2c *i2c, int reg, u8 value)
{
 if (i2c->endianness == LITTLE)
  iowrite8(value, i2c->base + reg);
 else
  iowrite8(value, i2c->base + reg + 3);
}
