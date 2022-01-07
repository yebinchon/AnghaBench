
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isl29501_private {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int ssize_t ;
typedef enum isl29501_register_name { ____Placeholder_isl29501_register_name } isl29501_register_name ;


 int EINVAL ;






 int REG_PHASE_EXP ;
 struct isl29501_private* iio_priv (struct iio_dev*) ;
 int isl29501_register_read (struct isl29501_private*,int,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t isl29501_read_ext(struct iio_dev *indio_dev,
     uintptr_t private,
     const struct iio_chan_spec *chan,
     char *buf)
{
 struct isl29501_private *isl29501 = iio_priv(indio_dev);
 enum isl29501_register_name reg = private;
 int ret;
 u32 value, gain, coeff, exp;

 switch (reg) {
 case 129:
 case 128:
  ret = isl29501_register_read(isl29501, reg, &gain);
  if (ret < 0)
   return ret;

  value = gain;
  break;
 case 131:
 case 130:
 case 133:
 case 132:
  ret = isl29501_register_read(isl29501, REG_PHASE_EXP, &exp);
  if (ret < 0)
   return ret;

  ret = isl29501_register_read(isl29501, reg, &coeff);
  if (ret < 0)
   return ret;

  value = coeff << exp;
  break;
 default:
  return -EINVAL;
 }

 return sprintf(buf, "%u\n", value);
}
