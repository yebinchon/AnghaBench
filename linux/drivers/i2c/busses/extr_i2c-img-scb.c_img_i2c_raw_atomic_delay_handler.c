
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_i2c {int at_cur_data; int at_cur_cmd; } ;


 int MODE_ATOMIC ;
 int img_i2c_atomic_op (struct img_i2c*,int ,int ) ;
 int img_i2c_switch_mode (struct img_i2c*,int ) ;

__attribute__((used)) static unsigned int img_i2c_raw_atomic_delay_handler(struct img_i2c *i2c,
     u32 int_status, u32 line_status)
{

 img_i2c_atomic_op(i2c, i2c->at_cur_cmd, i2c->at_cur_data);
 img_i2c_switch_mode(i2c, MODE_ATOMIC);
 return 0;
}
