
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct us5182d_data {scalar_t__ power_mode; int px_enabled; int als_enabled; } ;


 int US5182D_ALS_ONLY ;
 int US5182D_ALS_PX ;
 scalar_t__ US5182D_ONESHOT ;
 int us5182d_set_opmode (struct us5182d_data*,int ) ;

__attribute__((used)) static int us5182d_als_enable(struct us5182d_data *data)
{
 int ret;
 u8 mode;

 if (data->power_mode == US5182D_ONESHOT) {
  ret = us5182d_set_opmode(data, US5182D_ALS_ONLY);
  if (ret < 0)
   return ret;
  data->px_enabled = 0;
 }

 if (data->als_enabled)
  return 0;

 mode = data->px_enabled ? US5182D_ALS_PX : US5182D_ALS_ONLY;

 ret = us5182d_set_opmode(data, mode);
 if (ret < 0)
  return ret;

 data->als_enabled = 1;

 return 0;
}
