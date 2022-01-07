
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_aux {int crc_work; struct drm_crtc* crtc; scalar_t__ crc_count; } ;
struct drm_crtc {int dummy; } ;


 int DP_TEST_SINK ;
 int DP_TEST_SINK_START ;
 int drm_dp_dpcd_readb (struct drm_dp_aux*,int ,int*) ;
 int drm_dp_dpcd_writeb (struct drm_dp_aux*,int ,int) ;
 int schedule_work (int *) ;

int drm_dp_start_crc(struct drm_dp_aux *aux, struct drm_crtc *crtc)
{
 u8 buf;
 int ret;

 ret = drm_dp_dpcd_readb(aux, DP_TEST_SINK, &buf);
 if (ret < 0)
  return ret;

 ret = drm_dp_dpcd_writeb(aux, DP_TEST_SINK, buf | DP_TEST_SINK_START);
 if (ret < 0)
  return ret;

 aux->crc_count = 0;
 aux->crtc = crtc;
 schedule_work(&aux->crc_work);

 return 0;
}
