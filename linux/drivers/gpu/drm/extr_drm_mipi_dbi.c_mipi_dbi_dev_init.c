
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int preferred_depth; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;
struct mipi_dbi_dev {TYPE_2__ drm; } ;
struct drm_simple_display_pipe_funcs {int dummy; } ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;


 int ARRAY_SIZE (int ) ;
 int mipi_dbi_dev_init_with_formats (struct mipi_dbi_dev*,struct drm_simple_display_pipe_funcs const*,int ,int ,struct drm_display_mode const*,unsigned int,size_t) ;
 int mipi_dbi_formats ;

int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev,
        const struct drm_simple_display_pipe_funcs *funcs,
        const struct drm_display_mode *mode, unsigned int rotation)
{
 size_t bufsize = mode->vdisplay * mode->hdisplay * sizeof(u16);

 dbidev->drm.mode_config.preferred_depth = 16;

 return mipi_dbi_dev_init_with_formats(dbidev, funcs, mipi_dbi_formats,
           ARRAY_SIZE(mipi_dbi_formats), mode,
           rotation, bufsize);
}
