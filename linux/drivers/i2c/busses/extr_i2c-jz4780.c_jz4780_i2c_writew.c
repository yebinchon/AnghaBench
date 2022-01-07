
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_i2c {scalar_t__ iomem; } ;


 int writew (unsigned short,scalar_t__) ;

__attribute__((used)) static inline void jz4780_i2c_writew(struct jz4780_i2c *i2c,
         unsigned long offset, unsigned short val)
{
 writew(val, i2c->iomem + offset);
}
