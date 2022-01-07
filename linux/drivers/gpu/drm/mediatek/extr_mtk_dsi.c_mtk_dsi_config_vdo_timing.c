
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct videomode {int vsync_len; int vback_porch; int vfront_porch; int vactive; int hsync_len; int hback_porch; int hfront_porch; } ;
struct mtk_dsi {scalar_t__ format; int mode_flags; scalar_t__ regs; struct videomode vm; } ;


 scalar_t__ DSI_HBP_WC ;
 scalar_t__ DSI_HFP_WC ;
 scalar_t__ DSI_HSA_WC ;
 scalar_t__ DSI_VACT_NL ;
 scalar_t__ DSI_VBP_NL ;
 scalar_t__ DSI_VFP_NL ;
 scalar_t__ DSI_VSA_NL ;
 scalar_t__ MIPI_DSI_FMT_RGB565 ;
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ;
 int mtk_dsi_ps_control (struct mtk_dsi*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
{
 u32 horizontal_sync_active_byte;
 u32 horizontal_backporch_byte;
 u32 horizontal_frontporch_byte;
 u32 dsi_tmp_buf_bpp;

 struct videomode *vm = &dsi->vm;

 if (dsi->format == MIPI_DSI_FMT_RGB565)
  dsi_tmp_buf_bpp = 2;
 else
  dsi_tmp_buf_bpp = 3;

 writel(vm->vsync_len, dsi->regs + DSI_VSA_NL);
 writel(vm->vback_porch, dsi->regs + DSI_VBP_NL);
 writel(vm->vfront_porch, dsi->regs + DSI_VFP_NL);
 writel(vm->vactive, dsi->regs + DSI_VACT_NL);

 horizontal_sync_active_byte = (vm->hsync_len * dsi_tmp_buf_bpp - 10);

 if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
  horizontal_backporch_byte =
   (vm->hback_porch * dsi_tmp_buf_bpp - 10);
 else
  horizontal_backporch_byte = ((vm->hback_porch + vm->hsync_len) *
   dsi_tmp_buf_bpp - 10);

 horizontal_frontporch_byte = (vm->hfront_porch * dsi_tmp_buf_bpp - 12);

 writel(horizontal_sync_active_byte, dsi->regs + DSI_HSA_WC);
 writel(horizontal_backporch_byte, dsi->regs + DSI_HBP_WC);
 writel(horizontal_frontporch_byte, dsi->regs + DSI_HFP_WC);

 mtk_dsi_ps_control(dsi);
}
