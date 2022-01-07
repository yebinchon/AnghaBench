
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int addr; } ;
struct img_i2c {int check_timer; TYPE_1__ msg; int int_enable; int last_msg; } ;


 int INT_SLAVE_EVENT ;
 int MODE_AUTOMATIC ;
 int SCB_INT_MASK_REG ;
 int SCB_READ_ADDR_REG ;
 int SCB_READ_COUNT_REG ;
 int img_i2c_switch_mode (struct img_i2c*,int ) ;
 int img_i2c_writel (struct img_i2c*,int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static void img_i2c_read(struct img_i2c *i2c)
{
 img_i2c_switch_mode(i2c, MODE_AUTOMATIC);
 if (!i2c->last_msg)
  i2c->int_enable |= INT_SLAVE_EVENT;

 img_i2c_writel(i2c, SCB_INT_MASK_REG, i2c->int_enable);
 img_i2c_writel(i2c, SCB_READ_ADDR_REG, i2c->msg.addr);
 img_i2c_writel(i2c, SCB_READ_COUNT_REG, i2c->msg.len);

 mod_timer(&i2c->check_timer, jiffies + msecs_to_jiffies(1));
}
