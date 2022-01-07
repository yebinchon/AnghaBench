
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dps310_data {int dummy; } ;


 int dps310_get_pres_precision (struct dps310_data*) ;
 size_t ilog2 (int) ;
 int* scale_factors ;

__attribute__((used)) static int dps310_get_pres_k(struct dps310_data *data)
{
 int rc = dps310_get_pres_precision(data);

 if (rc < 0)
  return rc;

 return scale_factors[ilog2(rc)];
}
