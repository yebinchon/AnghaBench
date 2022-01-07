
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct6775_data {int* fan_div; int has_fan; } ;


 int ARRAY_SIZE (int*) ;
 int BIT (int) ;
 int nct6775_update_fan_div_common (struct nct6775_data*) ;
 int nct6775_write_fan_div_common (struct nct6775_data*,int) ;

__attribute__((used)) static void nct6775_init_fan_div(struct nct6775_data *data)
{
 int i;

 nct6775_update_fan_div_common(data);






 for (i = 0; i < ARRAY_SIZE(data->fan_div); i++) {
  if (!(data->has_fan & BIT(i)))
   continue;
  if (data->fan_div[i] == 0) {
   data->fan_div[i] = 7;
   nct6775_write_fan_div_common(data, i);
  }
 }
}
