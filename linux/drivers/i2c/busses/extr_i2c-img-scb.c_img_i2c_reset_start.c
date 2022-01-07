
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_i2c {int at_slave_event; int at_t_done; int at_cur_cmd; int seq; int int_enable; } ;


 int MODE_SEQUENCE ;
 int SCB_INT_MASK_REG ;
 int img_i2c_reset_seq ;
 int img_i2c_sequence (struct img_i2c*,int ) ;
 int img_i2c_switch_mode (struct img_i2c*,int ) ;
 int img_i2c_writel (struct img_i2c*,int ,int ) ;

__attribute__((used)) static void img_i2c_reset_start(struct img_i2c *i2c)
{

 img_i2c_switch_mode(i2c, MODE_SEQUENCE);
 img_i2c_writel(i2c, SCB_INT_MASK_REG, i2c->int_enable);
 i2c->seq = img_i2c_reset_seq;
 i2c->at_slave_event = 1;
 i2c->at_t_done = 1;
 i2c->at_cur_cmd = -1;


 img_i2c_sequence(i2c, 0);
}
