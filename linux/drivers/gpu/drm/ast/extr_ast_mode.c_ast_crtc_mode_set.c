
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct ast_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct ast_vbios_mode_info {int dummy; } ;
struct ast_private {scalar_t__ chip; } ;


 scalar_t__ AST1180 ;
 int AST_IO_CRTC_PORT ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ast_crtc_mode_set_base (struct drm_crtc*,int,int,struct drm_framebuffer*) ;
 int ast_get_vbios_mode_info (struct drm_crtc*,struct drm_display_mode*,struct drm_display_mode*,struct ast_vbios_mode_info*) ;
 int ast_open_key (struct ast_private*) ;
 int ast_set_crtc_reg (struct drm_crtc*,struct drm_display_mode*,struct ast_vbios_mode_info*) ;
 int ast_set_dac_reg (struct drm_crtc*,struct drm_display_mode*,struct ast_vbios_mode_info*) ;
 int ast_set_dclk_reg (struct drm_device*,struct drm_display_mode*,struct ast_vbios_mode_info*) ;
 int ast_set_ext_reg (struct drm_crtc*,struct drm_display_mode*,struct ast_vbios_mode_info*) ;
 int ast_set_index_reg (struct ast_private*,int ,int,int) ;
 int ast_set_offset_reg (struct drm_crtc*) ;
 int ast_set_std_reg (struct drm_crtc*,struct drm_display_mode*,struct ast_vbios_mode_info*) ;
 int ast_set_sync_reg (struct drm_device*,struct drm_display_mode*,struct ast_vbios_mode_info*) ;

__attribute__((used)) static int ast_crtc_mode_set(struct drm_crtc *crtc,
        struct drm_display_mode *mode,
        struct drm_display_mode *adjusted_mode,
        int x, int y,
        struct drm_framebuffer *old_fb)
{
 struct drm_device *dev = crtc->dev;
 struct ast_private *ast = crtc->dev->dev_private;
 struct ast_vbios_mode_info vbios_mode;
 bool ret;
 if (ast->chip == AST1180) {
  DRM_ERROR("AST 1180 modesetting not supported\n");
  return -EINVAL;
 }

 ret = ast_get_vbios_mode_info(crtc, mode, adjusted_mode, &vbios_mode);
 if (ret == 0)
  return -EINVAL;
 ast_open_key(ast);

 ast_set_index_reg(ast, AST_IO_CRTC_PORT, 0xa1, 0x06);

 ast_set_std_reg(crtc, adjusted_mode, &vbios_mode);
 ast_set_crtc_reg(crtc, adjusted_mode, &vbios_mode);
 ast_set_offset_reg(crtc);
 ast_set_dclk_reg(dev, adjusted_mode, &vbios_mode);
 ast_set_ext_reg(crtc, adjusted_mode, &vbios_mode);
 ast_set_sync_reg(dev, adjusted_mode, &vbios_mode);
 ast_set_dac_reg(crtc, adjusted_mode, &vbios_mode);

 ast_crtc_mode_set_base(crtc, x, y, old_fb);

 return 0;
}
