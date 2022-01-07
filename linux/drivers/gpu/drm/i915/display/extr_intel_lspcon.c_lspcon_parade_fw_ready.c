
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_aux {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int DRM_ERROR (char*) ;
 int LSPCON_PARADE_AVI_IF_CTRL ;
 int LSPCON_PARADE_AVI_IF_KICKOFF ;
 scalar_t__ drm_dp_dpcd_read (struct drm_dp_aux*,int ,int*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static bool lspcon_parade_fw_ready(struct drm_dp_aux *aux)
{
 u8 avi_if_ctrl;
 u8 retry;
 ssize_t ret;


 for (retry = 0; retry < 5; retry++) {
  if (retry)
   usleep_range(200, 300);

  ret = drm_dp_dpcd_read(aux, LSPCON_PARADE_AVI_IF_CTRL,
           &avi_if_ctrl, 1);
  if (ret < 0) {
   DRM_ERROR("Failed to read AVI IF control\n");
   return 0;
  }

  if ((avi_if_ctrl & LSPCON_PARADE_AVI_IF_KICKOFF) == 0)
   return 1;
 }

 DRM_ERROR("Parade FW not ready to accept AVI IF\n");
 return 0;
}
