
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hibmc_drm_private {int dummy; } ;


 int hibmc_hw_config (struct hibmc_drm_private*) ;
 int hibmc_hw_map (struct hibmc_drm_private*) ;

__attribute__((used)) static int hibmc_hw_init(struct hibmc_drm_private *priv)
{
 int ret;

 ret = hibmc_hw_map(priv);
 if (ret)
  return ret;

 hibmc_hw_config(priv);

 return 0;
}
