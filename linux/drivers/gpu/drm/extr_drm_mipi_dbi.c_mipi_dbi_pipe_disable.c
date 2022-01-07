
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dbi_dev {int enabled; scalar_t__ regulator; scalar_t__ backlight; } ;
struct TYPE_2__ {int dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;


 int DRM_DEBUG_KMS (char*) ;
 int backlight_disable (scalar_t__) ;
 struct mipi_dbi_dev* drm_to_mipi_dbi_dev (int ) ;
 int mipi_dbi_blank (struct mipi_dbi_dev*) ;
 int regulator_disable (scalar_t__) ;

void mipi_dbi_pipe_disable(struct drm_simple_display_pipe *pipe)
{
 struct mipi_dbi_dev *dbidev = drm_to_mipi_dbi_dev(pipe->crtc.dev);

 if (!dbidev->enabled)
  return;

 DRM_DEBUG_KMS("\n");

 dbidev->enabled = 0;

 if (dbidev->backlight)
  backlight_disable(dbidev->backlight);
 else
  mipi_dbi_blank(dbidev);

 if (dbidev->regulator)
  regulator_disable(dbidev->regulator);
}
