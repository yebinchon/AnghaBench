
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_uinfo {int num_gd; int first_gd; int num_sd; int first_sd; } ;
struct crypto4xx_device {int dummy; } ;


 int crypto4xx_put_gd_to_gdr (struct crypto4xx_device*) ;
 int crypto4xx_put_sd_to_sdr (struct crypto4xx_device*) ;

__attribute__((used)) static void crypto4xx_ret_sg_desc(struct crypto4xx_device *dev,
      struct pd_uinfo *pd_uinfo)
{
 int i;
 if (pd_uinfo->num_gd) {
  for (i = 0; i < pd_uinfo->num_gd; i++)
   crypto4xx_put_gd_to_gdr(dev);
  pd_uinfo->first_gd = 0xffffffff;
  pd_uinfo->num_gd = 0;
 }
 if (pd_uinfo->num_sd) {
  for (i = 0; i < pd_uinfo->num_sd; i++)
   crypto4xx_put_sd_to_sdr(dev);

  pd_uinfo->first_sd = 0xffffffff;
  pd_uinfo->num_sd = 0;
 }
}
