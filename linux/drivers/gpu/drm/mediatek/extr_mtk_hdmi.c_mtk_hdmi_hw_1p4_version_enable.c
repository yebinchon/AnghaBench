
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {scalar_t__ sys_offset; int sys_regmap; } ;


 int HDMI2P0_EN ;
 scalar_t__ HDMI_SYS_CFG20 ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void mtk_hdmi_hw_1p4_version_enable(struct mtk_hdmi *hdmi, bool enable)
{
 regmap_update_bits(hdmi->sys_regmap, hdmi->sys_offset + HDMI_SYS_CFG20,
      HDMI2P0_EN, enable ? 0 : HDMI2P0_EN);
}
