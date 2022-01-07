
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mtk_dsi {int dummy; } ;
typedef int s32 ;


 int DRM_ERROR (char*) ;
 int ETIME ;
 int mtk_dsi_irq_data_clear (struct mtk_dsi*,int ) ;
 int mtk_dsi_set_cmd_mode (struct mtk_dsi*) ;
 int mtk_dsi_wait_for_irq_done (struct mtk_dsi*,int ,int ) ;

__attribute__((used)) static s32 mtk_dsi_switch_to_cmd_mode(struct mtk_dsi *dsi, u8 irq_flag, u32 t)
{
 mtk_dsi_irq_data_clear(dsi, irq_flag);
 mtk_dsi_set_cmd_mode(dsi);

 if (!mtk_dsi_wait_for_irq_done(dsi, irq_flag, t)) {
  DRM_ERROR("failed to switch cmd mode\n");
  return -ETIME;
 } else {
  return 0;
 }
}
