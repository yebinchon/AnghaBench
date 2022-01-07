
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dps310_data {int dummy; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int dps310_calculate_pressure (struct dps310_data*) ;
 int dps310_get_pres_precision (struct dps310_data*) ;
 int dps310_get_pres_samp_freq (struct dps310_data*) ;
 int dps310_read_pres_raw (struct dps310_data*) ;

__attribute__((used)) static int dps310_read_pressure(struct dps310_data *data, int *val, int *val2,
    long mask)
{
 int rc;

 switch (mask) {
 case 128:
  rc = dps310_get_pres_samp_freq(data);
  if (rc < 0)
   return rc;

  *val = rc;
  return IIO_VAL_INT;

 case 129:
  rc = dps310_read_pres_raw(data);
  if (rc)
   return rc;

  rc = dps310_calculate_pressure(data);
  if (rc < 0)
   return rc;

  *val = rc;
  *val2 = 1000;
  return IIO_VAL_FRACTIONAL;

 case 130:
  rc = dps310_get_pres_precision(data);
  if (rc < 0)
   return rc;

  *val = rc;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
