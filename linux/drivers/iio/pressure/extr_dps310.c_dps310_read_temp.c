
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dps310_data {int dummy; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int dps310_calculate_temp (struct dps310_data*) ;
 int dps310_get_temp_precision (struct dps310_data*) ;
 int dps310_get_temp_samp_freq (struct dps310_data*) ;
 int dps310_read_temp_raw (struct dps310_data*) ;

__attribute__((used)) static int dps310_read_temp(struct dps310_data *data, int *val, int *val2,
       long mask)
{
 int rc;

 switch (mask) {
 case 128:
  rc = dps310_get_temp_samp_freq(data);
  if (rc < 0)
   return rc;

  *val = rc;
  return IIO_VAL_INT;

 case 129:
  rc = dps310_read_temp_raw(data);
  if (rc)
   return rc;

  rc = dps310_calculate_temp(data);
  if (rc < 0)
   return rc;

  *val = rc;
  return IIO_VAL_INT;

 case 130:
  rc = dps310_get_temp_precision(data);
  if (rc < 0)
   return rc;

  *val = rc;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
