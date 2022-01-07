
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int dummy; } ;


 int F_SEL ;
 int fxas21002c_hpf_value_from_sel (struct fxas21002c_data*,int) ;
 int fxas21002c_write (struct fxas21002c_data*,int ,int) ;

__attribute__((used)) static int fxas21002c_hpf_set(struct fxas21002c_data *data, int sel)
{
 int sel_bits;

 sel_bits = fxas21002c_hpf_value_from_sel(data, sel);
 if (sel_bits < 0)
  return sel_bits;

 return fxas21002c_write(data, F_SEL, sel_bits);
}
