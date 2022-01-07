
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct6775_data {scalar_t__ kind; } ;


 scalar_t__ nct6775 ;
 int nct6775_update_fan_div (struct nct6775_data*) ;

__attribute__((used)) static void nct6775_update_fan_div_common(struct nct6775_data *data)
{
 if (data->kind == nct6775)
  nct6775_update_fan_div(data);
}
