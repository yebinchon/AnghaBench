
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {scalar_t__ sys_offset; int sys_regmap; } ;


 int ANLG_ON ;
 int CFG3_CONTROL_PACKET_DELAY ;
 int GRL_CFG3 ;
 int HDMI_RST ;
 scalar_t__ HDMI_SYS_CFG1C ;
 int mtk_hdmi_clear_bits (struct mtk_hdmi*,int ,int ) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void mtk_hdmi_hw_reset(struct mtk_hdmi *hdmi)
{
 regmap_update_bits(hdmi->sys_regmap, hdmi->sys_offset + HDMI_SYS_CFG1C,
      HDMI_RST, HDMI_RST);
 regmap_update_bits(hdmi->sys_regmap, hdmi->sys_offset + HDMI_SYS_CFG1C,
      HDMI_RST, 0);
 mtk_hdmi_clear_bits(hdmi, GRL_CFG3, CFG3_CONTROL_PACKET_DELAY);
 regmap_update_bits(hdmi->sys_regmap, hdmi->sys_offset + HDMI_SYS_CFG1C,
      ANLG_ON, ANLG_ON);
}
