
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_hdmi {int regmap; } ;
struct dw_hdmi {int dummy; } ;


 int HIWORD_UPDATE (int,int) ;
 int RK3228_GRF_SOC_CON2 ;
 int RK3228_GRF_SOC_CON6 ;
 int RK3228_HDMI_HPD_VSEL ;
 int RK3228_HDMI_SCLIN_MSK ;
 int RK3228_HDMI_SCL_VSEL ;
 int RK3228_HDMI_SDAIN_MSK ;
 int RK3228_HDMI_SDA_VSEL ;
 int dw_hdmi_phy_setup_hpd (struct dw_hdmi*,void*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void dw_hdmi_rk3228_setup_hpd(struct dw_hdmi *dw_hdmi, void *data)
{
 struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;

 dw_hdmi_phy_setup_hpd(dw_hdmi, data);

 regmap_write(hdmi->regmap,
  RK3228_GRF_SOC_CON6,
  HIWORD_UPDATE(RK3228_HDMI_HPD_VSEL | RK3228_HDMI_SDA_VSEL |
         RK3228_HDMI_SCL_VSEL,
         RK3228_HDMI_HPD_VSEL | RK3228_HDMI_SDA_VSEL |
         RK3228_HDMI_SCL_VSEL));

 regmap_write(hdmi->regmap,
  RK3228_GRF_SOC_CON2,
  HIWORD_UPDATE(RK3228_HDMI_SDAIN_MSK | RK3228_HDMI_SCLIN_MSK,
         RK3228_HDMI_SDAIN_MSK | RK3228_HDMI_SCLIN_MSK));
}
