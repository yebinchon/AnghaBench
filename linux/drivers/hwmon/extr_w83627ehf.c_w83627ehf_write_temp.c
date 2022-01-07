
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w83627ehf_data {int dummy; } ;


 int is_word_sized (int) ;
 int w83627ehf_write_value (struct w83627ehf_data*,int,int) ;

__attribute__((used)) static int w83627ehf_write_temp(struct w83627ehf_data *data, u16 reg,
           u16 value)
{
 if (!is_word_sized(reg))
  value >>= 8;
 return w83627ehf_write_value(data, reg, value);
}
