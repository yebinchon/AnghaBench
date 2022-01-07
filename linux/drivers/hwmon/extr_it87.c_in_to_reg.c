
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct it87_data {int dummy; } ;


 long DIV_ROUND_CLOSEST (long,int ) ;
 int adc_lsb (struct it87_data const*,int) ;
 int clamp_val (long,int ,int) ;

__attribute__((used)) static u8 in_to_reg(const struct it87_data *data, int nr, long val)
{
 val = DIV_ROUND_CLOSEST(val * 10, adc_lsb(data, nr));
 return clamp_val(val, 0, 255);
}
