
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_dsi_host {int dummy; } ;


 int DSI_CTRL_CMD_MODE_EN ;
 int DSI_CTRL_ENABLE ;
 int DSI_CTRL_VID_MODE_EN ;
 int DSI_IRQ_MASK_CMD_MDP_DONE ;
 int DSI_IRQ_MASK_VIDEO_DONE ;
 int REG_DSI_CTRL ;
 int dsi_intr_ctrl (struct msm_dsi_host*,int,int) ;
 int dsi_read (struct msm_dsi_host*,int ) ;
 int dsi_write (struct msm_dsi_host*,int ,int) ;

__attribute__((used)) static void dsi_op_mode_config(struct msm_dsi_host *msm_host,
     bool video_mode, bool enable)
{
 u32 dsi_ctrl;

 dsi_ctrl = dsi_read(msm_host, REG_DSI_CTRL);

 if (!enable) {
  dsi_ctrl &= ~(DSI_CTRL_ENABLE | DSI_CTRL_VID_MODE_EN |
    DSI_CTRL_CMD_MODE_EN);
  dsi_intr_ctrl(msm_host, DSI_IRQ_MASK_CMD_MDP_DONE |
     DSI_IRQ_MASK_VIDEO_DONE, 0);
 } else {
  if (video_mode) {
   dsi_ctrl |= DSI_CTRL_VID_MODE_EN;
  } else {
   dsi_ctrl |= DSI_CTRL_CMD_MODE_EN;
   dsi_intr_ctrl(msm_host, DSI_IRQ_MASK_CMD_MDP_DONE, 1);
  }
  dsi_ctrl |= DSI_CTRL_ENABLE;
 }

 dsi_write(msm_host, REG_DSI_CTRL, dsi_ctrl);
}
