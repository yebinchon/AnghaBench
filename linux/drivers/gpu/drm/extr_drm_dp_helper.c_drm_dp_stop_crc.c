
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_aux {int * crtc; int crc_work; } ;


 int DP_TEST_SINK ;
 int DP_TEST_SINK_START ;
 int drm_dp_dpcd_readb (struct drm_dp_aux*,int ,int*) ;
 int drm_dp_dpcd_writeb (struct drm_dp_aux*,int ,int) ;
 int flush_work (int *) ;

int drm_dp_stop_crc(struct drm_dp_aux *aux)
{
 u8 buf;
 int ret;

 ret = drm_dp_dpcd_readb(aux, DP_TEST_SINK, &buf);
 if (ret < 0)
  return ret;

 ret = drm_dp_dpcd_writeb(aux, DP_TEST_SINK, buf & ~DP_TEST_SINK_START);
 if (ret < 0)
  return ret;

 flush_work(&aux->crc_work);
 aux->crtc = ((void*)0);

 return 0;
}
