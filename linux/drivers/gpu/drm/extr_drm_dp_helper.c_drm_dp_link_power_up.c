
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_link {int revision; } ;
struct drm_dp_aux {int dummy; } ;


 int DP_SET_POWER ;
 int DP_SET_POWER_D0 ;
 int DP_SET_POWER_MASK ;
 int drm_dp_dpcd_readb (struct drm_dp_aux*,int ,int *) ;
 int drm_dp_dpcd_writeb (struct drm_dp_aux*,int ,int ) ;
 int usleep_range (int,int) ;

int drm_dp_link_power_up(struct drm_dp_aux *aux, struct drm_dp_link *link)
{
 u8 value;
 int err;


 if (link->revision < 0x11)
  return 0;

 err = drm_dp_dpcd_readb(aux, DP_SET_POWER, &value);
 if (err < 0)
  return err;

 value &= ~DP_SET_POWER_MASK;
 value |= DP_SET_POWER_D0;

 err = drm_dp_dpcd_writeb(aux, DP_SET_POWER, value);
 if (err < 0)
  return err;






 usleep_range(1000, 2000);

 return 0;
}
