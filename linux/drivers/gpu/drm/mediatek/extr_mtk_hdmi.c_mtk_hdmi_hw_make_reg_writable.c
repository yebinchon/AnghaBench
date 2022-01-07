
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_hdmi_phy {TYPE_1__* conf; } ;
struct mtk_hdmi {scalar_t__ sys_offset; int sys_regmap; int phy; } ;
struct arm_smccc_res {int dummy; } ;
struct TYPE_2__ {scalar_t__ tz_disabled; } ;


 int ANLG_ON ;
 int HDMI_ON ;
 int HDMI_PCLK_FREE_RUN ;
 scalar_t__ HDMI_SYS_CFG1C ;
 scalar_t__ HDMI_SYS_CFG20 ;
 int MTK_SIP_SET_AUTHORIZED_SECURE_REG ;
 int arm_smccc_smc (int ,int,int,int ,int ,int ,int ,int ,struct arm_smccc_res*) ;
 struct mtk_hdmi_phy* phy_get_drvdata (int ) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;

__attribute__((used)) static void mtk_hdmi_hw_make_reg_writable(struct mtk_hdmi *hdmi, bool enable)
{
 struct arm_smccc_res res;
 struct mtk_hdmi_phy *hdmi_phy = phy_get_drvdata(hdmi->phy);







 if (hdmi_phy->conf && hdmi_phy->conf->tz_disabled)
  regmap_update_bits(hdmi->sys_regmap,
       hdmi->sys_offset + HDMI_SYS_CFG20,
       0x80008005, enable ? 0x80000005 : 0x8000);
 else
  arm_smccc_smc(MTK_SIP_SET_AUTHORIZED_SECURE_REG, 0x14000904,
         0x80000000, 0, 0, 0, 0, 0, &res);

 regmap_update_bits(hdmi->sys_regmap, hdmi->sys_offset + HDMI_SYS_CFG20,
      HDMI_PCLK_FREE_RUN, enable ? HDMI_PCLK_FREE_RUN : 0);
 regmap_update_bits(hdmi->sys_regmap, hdmi->sys_offset + HDMI_SYS_CFG1C,
      HDMI_ON | ANLG_ON, enable ? (HDMI_ON | ANLG_ON) : 0);
}
