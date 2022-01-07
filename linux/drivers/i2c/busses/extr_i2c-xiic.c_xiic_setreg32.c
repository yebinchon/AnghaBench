
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xiic_i2c {scalar_t__ endianness; scalar_t__ base; } ;


 scalar_t__ LITTLE ;
 int iowrite32 (int,scalar_t__) ;
 int iowrite32be (int,scalar_t__) ;

__attribute__((used)) static inline void xiic_setreg32(struct xiic_i2c *i2c, int reg, int value)
{
 if (i2c->endianness == LITTLE)
  iowrite32(value, i2c->base + reg);
 else
  iowrite32be(value, i2c->base + reg);
}
