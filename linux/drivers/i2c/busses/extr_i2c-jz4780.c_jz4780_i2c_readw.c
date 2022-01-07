
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_i2c {scalar_t__ iomem; } ;


 unsigned short readw (scalar_t__) ;

__attribute__((used)) static inline unsigned short jz4780_i2c_readw(struct jz4780_i2c *i2c,
           unsigned long offset)
{
 return readw(i2c->iomem + offset);
}
