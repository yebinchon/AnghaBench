
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dbi {int dummy; } ;
struct mipi_dbi_dev {int enabled; struct mipi_dbi dbi; } ;
struct TYPE_2__ {int dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;


 int DRM_DEBUG_KMS (char*) ;
 int ILI9225_DISPLAY_CONTROL_1 ;
 int ILI9225_POWER_CONTROL_1 ;
 int ILI9225_POWER_CONTROL_2 ;
 struct mipi_dbi_dev* drm_to_mipi_dbi_dev (int ) ;
 int ili9225_command (struct mipi_dbi*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void ili9225_pipe_disable(struct drm_simple_display_pipe *pipe)
{
 struct mipi_dbi_dev *dbidev = drm_to_mipi_dbi_dev(pipe->crtc.dev);
 struct mipi_dbi *dbi = &dbidev->dbi;

 DRM_DEBUG_KMS("\n");
 if (!dbidev->enabled)
  return;

 ili9225_command(dbi, ILI9225_DISPLAY_CONTROL_1, 0x0000);
 msleep(50);
 ili9225_command(dbi, ILI9225_POWER_CONTROL_2, 0x0007);
 msleep(50);
 ili9225_command(dbi, ILI9225_POWER_CONTROL_1, 0x0a02);

 dbidev->enabled = 0;
}
