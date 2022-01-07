
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synquacer_i2c {int dummy; } ;
struct i2c_msg {scalar_t__ len; } ;


 unsigned long DIV_ROUND_UP (unsigned long,int) ;

__attribute__((used)) static inline unsigned long calc_timeout_ms(struct synquacer_i2c *i2c,
         struct i2c_msg *msgs,
         int num)
{
 unsigned long bit_count = 0;
 int i;

 for (i = 0; i < num; i++, msgs++)
  bit_count += msgs->len;

 return DIV_ROUND_UP((bit_count * 9 + num * 10) * 3, 200) + 10;
}
