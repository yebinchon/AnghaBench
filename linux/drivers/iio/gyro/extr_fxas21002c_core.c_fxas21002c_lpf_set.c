
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int dummy; } ;


 int EINVAL ;
 int F_BW ;
 int fxas21002c_lpf_value_from_bw (struct fxas21002c_data*,int) ;
 int fxas21002c_odr_get (struct fxas21002c_data*,int*) ;
 int fxas21002c_write (struct fxas21002c_data*,int ,int) ;

__attribute__((used)) static int fxas21002c_lpf_set(struct fxas21002c_data *data, int bw)
{
 int bw_bits;
 int odr;
 int ret;

 bw_bits = fxas21002c_lpf_value_from_bw(data, bw);
 if (bw_bits < 0)
  return bw_bits;





 ret = fxas21002c_odr_get(data, &odr);
 if (ret < 0)
  return -EINVAL;

 if ((odr == 25 && bw_bits > 0x01) || (odr == 12 && bw_bits > 0))
  return -EINVAL;

 return fxas21002c_write(data, F_BW, bw_bits);
}
