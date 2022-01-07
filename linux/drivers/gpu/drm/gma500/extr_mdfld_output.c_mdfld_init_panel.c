
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;






 int mdfld_dsi_output_init (struct drm_device*,int,int *) ;
 int mdfld_tc35876x_funcs ;
 int mdfld_tmd_vid_funcs ;
 int mdfld_tpo_vid_funcs ;
 int tc35876x_init (struct drm_device*) ;

__attribute__((used)) static void mdfld_init_panel(struct drm_device *dev, int mipi_pipe,
        int p_type)
{
 switch (p_type) {
 case 128:
  mdfld_dsi_output_init(dev, mipi_pipe, &mdfld_tpo_vid_funcs);
  break;
 case 130:
  tc35876x_init(dev);
  mdfld_dsi_output_init(dev, mipi_pipe, &mdfld_tc35876x_funcs);
  break;
 case 129:
  mdfld_dsi_output_init(dev, mipi_pipe, &mdfld_tmd_vid_funcs);
  break;
 case 131:


  break;
 }
}
