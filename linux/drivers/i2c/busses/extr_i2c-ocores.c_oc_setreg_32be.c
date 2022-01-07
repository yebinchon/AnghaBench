
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ocores_i2c {int reg_shift; scalar_t__ base; } ;


 int iowrite32be (int ,scalar_t__) ;

__attribute__((used)) static void oc_setreg_32be(struct ocores_i2c *i2c, int reg, u8 value)
{
 iowrite32be(value, i2c->base + (reg << i2c->reg_shift));
}
