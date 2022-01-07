
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_aux {int crc_count; } ;


 int DP_TEST_COUNT_MASK ;
 int DP_TEST_CRC_R_CR ;
 int DP_TEST_SINK ;
 int DP_TEST_SINK_MISC ;
 int DP_TEST_SINK_START ;
 int EAGAIN ;
 int WARN_ON (int) ;
 int drm_dp_dpcd_read (struct drm_dp_aux*,int ,int*,int) ;
 int drm_dp_dpcd_readb (struct drm_dp_aux*,int ,int*) ;

__attribute__((used)) static int drm_dp_aux_get_crc(struct drm_dp_aux *aux, u8 *crc)
{
 u8 buf, count;
 int ret;

 ret = drm_dp_dpcd_readb(aux, DP_TEST_SINK, &buf);
 if (ret < 0)
  return ret;

 WARN_ON(!(buf & DP_TEST_SINK_START));

 ret = drm_dp_dpcd_readb(aux, DP_TEST_SINK_MISC, &buf);
 if (ret < 0)
  return ret;

 count = buf & DP_TEST_COUNT_MASK;
 if (count == aux->crc_count)
  return -EAGAIN;

 aux->crc_count = count;





 ret = drm_dp_dpcd_read(aux, DP_TEST_CRC_R_CR, crc, 6);
 if (ret < 0)
  return ret;

 return 0;
}
