
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_aux {int dummy; } ;


 int DP_MAIN_LINK_CHANNEL_CODING_SET ;
 int drm_dp_dpcd_writeb (struct drm_dp_aux*,int ,int ) ;

int drm_dp_aux_prepare(struct drm_dp_aux *aux, u8 encoding)
{
 int err;

 err = drm_dp_dpcd_writeb(aux, DP_MAIN_LINK_CHANNEL_CODING_SET,
     encoding);
 if (err < 0)
  return err;

 return 0;
}
