
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct truly_nt35597 {int dev; int * dsi; } ;
struct drm_panel {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int DRM_DEV_ERROR (int ,char*,int ,int) ;
 int mipi_dsi_dcs_write (int ,int ,int *,int ) ;
 struct truly_nt35597* panel_to_ctx (struct drm_panel*) ;

__attribute__((used)) static int truly_dcs_write(struct drm_panel *panel, u32 command)
{
 struct truly_nt35597 *ctx = panel_to_ctx(panel);
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(ctx->dsi); i++) {
  ret = mipi_dsi_dcs_write(ctx->dsi[i], command, ((void*)0), 0);
  if (ret < 0) {
   DRM_DEV_ERROR(ctx->dev,
    "cmd 0x%x failed for dsi = %d\n",
    command, i);
  }
 }

 return ret;
}
