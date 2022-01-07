
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;
struct hfi1_asic_data {int dummy; } ;


 int clean_up_i2c (struct hfi1_devdata*,struct hfi1_asic_data*) ;
 int kfree (struct hfi1_asic_data*) ;

__attribute__((used)) static void finalize_asic_data(struct hfi1_devdata *dd,
          struct hfi1_asic_data *ad)
{
 clean_up_i2c(dd, ad);
 kfree(ad);
}
