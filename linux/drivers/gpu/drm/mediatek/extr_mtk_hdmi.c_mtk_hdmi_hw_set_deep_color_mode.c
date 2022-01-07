
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {scalar_t__ sys_offset; int sys_regmap; } ;


 int COLOR_8BIT_MODE ;
 int DEEP_COLOR_EN ;
 int DEEP_COLOR_MODE_MASK ;
 scalar_t__ HDMI_SYS_CFG20 ;
 int regmap_update_bits (int ,scalar_t__,int,int ) ;

__attribute__((used)) static void mtk_hdmi_hw_set_deep_color_mode(struct mtk_hdmi *hdmi)
{
 regmap_update_bits(hdmi->sys_regmap, hdmi->sys_offset + HDMI_SYS_CFG20,
      DEEP_COLOR_MODE_MASK | DEEP_COLOR_EN,
      COLOR_8BIT_MODE);
}
