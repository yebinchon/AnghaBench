
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_i2c {int dummy; } ;


 int jz4780_i2c_enable (struct jz4780_i2c*) ;
 int jz4780_i2c_set_speed (struct jz4780_i2c*) ;

__attribute__((used)) static int jz4780_i2c_prepare(struct jz4780_i2c *i2c)
{
 jz4780_i2c_set_speed(i2c);
 return jz4780_i2c_enable(i2c);
}
