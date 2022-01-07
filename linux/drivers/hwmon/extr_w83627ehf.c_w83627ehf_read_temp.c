
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w83627ehf_data {int dummy; } ;


 int is_word_sized (int) ;
 int w83627ehf_read_value (struct w83627ehf_data*,int) ;

__attribute__((used)) static u16 w83627ehf_read_temp(struct w83627ehf_data *data, u16 reg)
{
 u16 res;

 res = w83627ehf_read_value(data, reg);
 if (!is_word_sized(reg))
  res <<= 8;

 return res;
}
