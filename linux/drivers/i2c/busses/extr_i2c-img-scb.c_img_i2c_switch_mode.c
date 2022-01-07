
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_i2c {int mode; scalar_t__ line_status; int int_enable; } ;
typedef enum img_i2c_mode { ____Placeholder_img_i2c_mode } img_i2c_mode ;


 int * img_i2c_int_enable_by_mode ;

__attribute__((used)) static void img_i2c_switch_mode(struct img_i2c *i2c, enum img_i2c_mode mode)
{
 i2c->mode = mode;
 i2c->int_enable = img_i2c_int_enable_by_mode[mode];
 i2c->line_status = 0;
}
