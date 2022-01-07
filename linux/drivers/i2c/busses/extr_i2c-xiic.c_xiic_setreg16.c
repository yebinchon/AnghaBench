
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xiic_i2c {scalar_t__ endianness; scalar_t__ base; } ;


 scalar_t__ LITTLE ;
 int iowrite16 (int ,scalar_t__) ;
 int iowrite16be (int ,scalar_t__) ;

__attribute__((used)) static inline void xiic_setreg16(struct xiic_i2c *i2c, int reg, u16 value)
{
 if (i2c->endianness == LITTLE)
  iowrite16(value, i2c->base + reg);
 else
  iowrite16be(value, i2c->base + reg + 2);
}
