
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad_sigma_delta {int dummy; } ;
struct ad_sd_calib_data {int channel; int mode; } ;


 int ad_sd_calibrate (struct ad_sigma_delta*,int ,int ) ;

int ad_sd_calibrate_all(struct ad_sigma_delta *sigma_delta,
 const struct ad_sd_calib_data *cb, unsigned int n)
{
 unsigned int i;
 int ret;

 for (i = 0; i < n; i++) {
  ret = ad_sd_calibrate(sigma_delta, cb[i].mode, cb[i].channel);
  if (ret)
   return ret;
 }

 return 0;
}
