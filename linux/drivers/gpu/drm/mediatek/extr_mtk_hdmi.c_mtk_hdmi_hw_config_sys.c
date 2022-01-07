
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {scalar_t__ sys_offset; int sys_regmap; } ;


 int HDMI_OUT_FIFO_EN ;
 scalar_t__ HDMI_SYS_CFG20 ;
 int MHL_MODE_ON ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mtk_hdmi_hw_config_sys(struct mtk_hdmi *hdmi)
{
 regmap_update_bits(hdmi->sys_regmap, hdmi->sys_offset + HDMI_SYS_CFG20,
      HDMI_OUT_FIFO_EN | MHL_MODE_ON, 0);
 usleep_range(2000, 4000);
 regmap_update_bits(hdmi->sys_regmap, hdmi->sys_offset + HDMI_SYS_CFG20,
      HDMI_OUT_FIFO_EN | MHL_MODE_ON, HDMI_OUT_FIFO_EN);
}
