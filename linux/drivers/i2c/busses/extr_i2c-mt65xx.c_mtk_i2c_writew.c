
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mtk_i2c {TYPE_1__* dev_comp; scalar_t__ base; } ;
typedef enum I2C_REGS_OFFSET { ____Placeholder_I2C_REGS_OFFSET } I2C_REGS_OFFSET ;
struct TYPE_2__ {scalar_t__* regs; } ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static void mtk_i2c_writew(struct mtk_i2c *i2c, u16 val,
      enum I2C_REGS_OFFSET reg)
{
 writew(val, i2c->base + i2c->dev_comp->regs[reg]);
}
