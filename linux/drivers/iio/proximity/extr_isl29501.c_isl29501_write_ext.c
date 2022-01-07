
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isl29501_private {int* shadow_coeffs; TYPE_1__* client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int ssize_t ;
typedef enum isl29501_register_name { ____Placeholder_isl29501_register_name } isl29501_register_name ;
struct TYPE_2__ {int dev; } ;


 int COEFF_MAX ;
 int EINVAL ;
 int ERANGE ;
 unsigned int ISL29501_MAX_EXP_VAL ;





 int REG_PHASE_EXP ;
 unsigned int U16_MAX ;
 unsigned int U8_MAX ;
 int dev_dbg (int *,char*,int,int) ;
 struct isl29501_private* iio_priv (struct iio_dev*) ;
 int isl29501_find_corr_exp (int,unsigned int,unsigned int) ;
 int isl29501_register_write (struct isl29501_private*,int,int) ;
 int isl29501_set_shadow_coeff (struct isl29501_private*,int,unsigned int) ;
 int isl29501_write_coeff (struct isl29501_private*,int,int) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int max (int,int) ;

__attribute__((used)) static ssize_t isl29501_write_ext(struct iio_dev *indio_dev,
      uintptr_t private,
      const struct iio_chan_spec *chan,
      const char *buf, size_t len)
{
 struct isl29501_private *isl29501 = iio_priv(indio_dev);
 enum isl29501_register_name reg = private;
 unsigned int val;
 int max_exp = 0;
 int ret;
 int i;

 ret = kstrtouint(buf, 10, &val);
 if (ret)
  return ret;

 switch (reg) {
 case 128:
  if (val > U16_MAX)
   return -ERANGE;

  ret = isl29501_register_write(isl29501, reg, val);
  if (ret < 0)
   return ret;

  break;
 case 130:
 case 129:
 case 132:
 case 131:

  if (val > (U8_MAX << ISL29501_MAX_EXP_VAL))
   return -ERANGE;


  ret = isl29501_set_shadow_coeff(isl29501, reg, val);
  if (ret < 0)
   return ret;





  for (i = 0; i < COEFF_MAX; i++) {
   int corr;
   int corr_exp;

   corr = isl29501->shadow_coeffs[i];
   corr_exp = isl29501_find_corr_exp(corr,
         ISL29501_MAX_EXP_VAL,
         U8_MAX / 2);
   dev_dbg(&isl29501->client->dev,
    "found exp of corr(%d) = %d\n", corr, corr_exp);

   max_exp = max(max_exp, corr_exp);
  }






  for (i = 0; i < COEFF_MAX; i++) {
   int corr;
   int mantissa;

   corr = isl29501->shadow_coeffs[i];
   if (!corr)
    continue;

   mantissa = corr >> max_exp;

   ret = isl29501_write_coeff(isl29501, i, mantissa);
   if (ret < 0)
    return ret;
  }

  ret = isl29501_register_write(isl29501, REG_PHASE_EXP, max_exp);
  if (ret < 0)
   return ret;

  break;
 default:
  return -EINVAL;
 }

 return len;
}
