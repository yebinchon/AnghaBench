
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct drm_dp_aux {int dummy; } ;
typedef int ssize_t ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*,scalar_t__) ;
 scalar_t__ LSPCON_MCA_AVI_IF_CTRL ;
 int LSPCON_MCA_AVI_IF_HANDLED ;
 int LSPCON_MCA_AVI_IF_KICKOFF ;
 scalar_t__ LSPCON_MCA_AVI_IF_WRITE_OFFSET ;
 int drm_dp_dpcd_read (struct drm_dp_aux*,scalar_t__,int*,int) ;
 int drm_dp_dpcd_write (struct drm_dp_aux*,scalar_t__,int*,int) ;
 int mdelay (int) ;

__attribute__((used)) static bool _lspcon_write_avi_infoframe_mca(struct drm_dp_aux *aux,
         const u8 *buffer, ssize_t len)
{
 int ret;
 u32 val = 0;
 u32 retry;
 u16 reg;
 const u8 *data = buffer;

 reg = LSPCON_MCA_AVI_IF_WRITE_OFFSET;
 while (val < len) {

  for (retry = 0; retry < 5; retry++) {
   ret = drm_dp_dpcd_write(aux, reg, (void *)data, 1);
   if (ret == 1) {
    break;
   } else if (retry < 4) {
    mdelay(50);
    continue;
   } else {
    DRM_ERROR("DPCD write failed at:0x%x\n", reg);
    return 0;
   }
  }
  val++; reg++; data++;
 }

 val = 0;
 reg = LSPCON_MCA_AVI_IF_CTRL;
 ret = drm_dp_dpcd_read(aux, reg, &val, 1);
 if (ret < 0) {
  DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
  return 0;
 }


 val &= ~LSPCON_MCA_AVI_IF_HANDLED;
 val |= LSPCON_MCA_AVI_IF_KICKOFF;

 ret = drm_dp_dpcd_write(aux, reg, &val, 1);
 if (ret < 0) {
  DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
  return 0;
 }

 val = 0;
 ret = drm_dp_dpcd_read(aux, reg, &val, 1);
 if (ret < 0) {
  DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
  return 0;
 }

 if (val == LSPCON_MCA_AVI_IF_HANDLED)
  DRM_DEBUG_KMS("AVI IF handled by FW\n");

 return 1;
}
