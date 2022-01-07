
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct anx78xx {int aux; } ;


 int DP_GET_SINK_COUNT (int ) ;
 int DP_SINK_COUNT ;
 int DRM_ERROR (char*,...) ;
 int EIO ;
 int drm_dp_dpcd_readb (int *,int ,int *) ;

__attribute__((used)) static int anx78xx_get_downstream_info(struct anx78xx *anx78xx)
{
 u8 value;
 int err;

 err = drm_dp_dpcd_readb(&anx78xx->aux, DP_SINK_COUNT, &value);
 if (err < 0) {
  DRM_ERROR("Get sink count failed %d\n", err);
  return err;
 }

 if (!DP_GET_SINK_COUNT(value)) {
  DRM_ERROR("Downstream disconnected\n");
  return -EIO;
 }

 return 0;
}
