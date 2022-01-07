
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dbi_dev {int enabled; int dbi; } ;
struct TYPE_2__ {int dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;


 int DRM_DEBUG_KMS (char*) ;
 int MIPI_DCS_SET_DISPLAY_OFF ;
 struct mipi_dbi_dev* drm_to_mipi_dbi_dev (int ) ;
 int mipi_dbi_command (int *,int ) ;

__attribute__((used)) static void st7586_pipe_disable(struct drm_simple_display_pipe *pipe)
{
 struct mipi_dbi_dev *dbidev = drm_to_mipi_dbi_dev(pipe->crtc.dev);
 DRM_DEBUG_KMS("\n");

 if (!dbidev->enabled)
  return;

 mipi_dbi_command(&dbidev->dbi, MIPI_DCS_SET_DISPLAY_OFF);
 dbidev->enabled = 0;
}
