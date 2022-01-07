
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_vtg_sync_params {int hsync; int vsync_line_top; int vsync_line_bot; int vsync_off_top; int vsync_off_bot; } ;
struct sti_vtg {scalar_t__ regs; } ;
struct drm_display_mode {int htotal; int vtotal; } ;
struct TYPE_2__ {scalar_t__ bot_v_hd; scalar_t__ top_v_hd; scalar_t__ bot_v_vd; scalar_t__ top_v_vd; scalar_t__ h_hd; } ;


 int AWG_DELAY_HD ;
 int DVO_DELAY ;
 int HDMI_DELAY ;
 scalar_t__ VTG_CLKLN ;
 scalar_t__ VTG_HLFLN ;
 unsigned int VTG_MAX_SYNC_OUTPUT ;
 scalar_t__ VTG_MODE ;
 int VTG_SYNC_ID_DVO ;
 int VTG_SYNC_ID_HDDCS ;
 int VTG_SYNC_ID_HDF ;
 int VTG_SYNC_ID_HDMI ;
 TYPE_1__* vtg_regs_offs ;
 int vtg_set_hsync_vsync_pos (struct sti_vtg_sync_params*,int ,struct drm_display_mode const*) ;
 int vtg_set_output_window (scalar_t__,struct drm_display_mode const*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void vtg_set_mode(struct sti_vtg *vtg,
    int type,
    struct sti_vtg_sync_params *sync,
    const struct drm_display_mode *mode)
{
 unsigned int i;


 writel(mode->htotal, vtg->regs + VTG_CLKLN);


 writel(mode->vtotal * 2, vtg->regs + VTG_HLFLN);


 vtg_set_output_window(vtg->regs, mode);


 vtg_set_hsync_vsync_pos(&sync[VTG_SYNC_ID_HDMI - 1], HDMI_DELAY, mode);


 vtg_set_hsync_vsync_pos(&sync[VTG_SYNC_ID_HDDCS - 1], 0, mode);


 vtg_set_hsync_vsync_pos(&sync[VTG_SYNC_ID_HDF - 1], AWG_DELAY_HD, mode);


 vtg_set_hsync_vsync_pos(&sync[VTG_SYNC_ID_DVO - 1], DVO_DELAY, mode);


 for (i = 0; i < VTG_MAX_SYNC_OUTPUT ; i++) {
  writel(sync[i].hsync,
         vtg->regs + vtg_regs_offs[i].h_hd);
  writel(sync[i].vsync_line_top,
         vtg->regs + vtg_regs_offs[i].top_v_vd);
  writel(sync[i].vsync_line_bot,
         vtg->regs + vtg_regs_offs[i].bot_v_vd);
  writel(sync[i].vsync_off_top,
         vtg->regs + vtg_regs_offs[i].top_v_hd);
  writel(sync[i].vsync_off_bot,
         vtg->regs + vtg_regs_offs[i].bot_v_hd);
 }


 writel(type, vtg->regs + VTG_MODE);
}
