
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct it87_data {int dummy; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int adc_lsb (struct it87_data const*,int) ;

__attribute__((used)) static int in_from_reg(const struct it87_data *data, int nr, int val)
{
 return DIV_ROUND_CLOSEST(val * adc_lsb(data, nr), 10);
}
