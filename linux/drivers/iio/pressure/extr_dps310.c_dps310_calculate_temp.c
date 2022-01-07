
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dps310_data {scalar_t__ c1; scalar_t__ temp_raw; scalar_t__ c0; } ;
typedef long long s64 ;


 long long div_s64 (long long,int) ;
 int dps310_get_temp_k (struct dps310_data*) ;

__attribute__((used)) static int dps310_calculate_temp(struct dps310_data *data)
{
 s64 c0;
 s64 t;
 int kt = dps310_get_temp_k(data);

 if (kt < 0)
  return kt;


 c0 = div_s64((s64)kt * (s64)data->c0, 2);


 t = c0 + ((s64)data->temp_raw * (s64)data->c1);


 return (int)div_s64(t * 1000LL, kt);
}
