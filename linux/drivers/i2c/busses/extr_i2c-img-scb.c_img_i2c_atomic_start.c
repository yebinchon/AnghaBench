
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_i2c {int int_enable; } ;


 int CMD_GEN_START ;
 int MODE_ATOMIC ;
 int SCB_INT_MASK_REG ;
 int img_i2c_atomic_op (struct img_i2c*,int ,int) ;
 int img_i2c_switch_mode (struct img_i2c*,int ) ;
 int img_i2c_writel (struct img_i2c*,int ,int ) ;

__attribute__((used)) static void img_i2c_atomic_start(struct img_i2c *i2c)
{
 img_i2c_switch_mode(i2c, MODE_ATOMIC);
 img_i2c_writel(i2c, SCB_INT_MASK_REG, i2c->int_enable);
 img_i2c_atomic_op(i2c, CMD_GEN_START, 0x00);
}
