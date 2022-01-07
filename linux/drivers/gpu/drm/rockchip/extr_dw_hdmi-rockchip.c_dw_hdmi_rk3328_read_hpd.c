
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_hdmi {int regmap; } ;
struct dw_hdmi {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int HIWORD_UPDATE (int,int) ;
 int RK3328_GRF_SOC_CON4 ;
 int RK3328_HDMI_SCL_5V ;
 int RK3328_HDMI_SDA_5V ;
 int connector_status_connected ;
 int dw_hdmi_phy_read_hpd (struct dw_hdmi*,void*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static enum drm_connector_status
dw_hdmi_rk3328_read_hpd(struct dw_hdmi *dw_hdmi, void *data)
{
 struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
 enum drm_connector_status status;

 status = dw_hdmi_phy_read_hpd(dw_hdmi, data);

 if (status == connector_status_connected)
  regmap_write(hdmi->regmap,
   RK3328_GRF_SOC_CON4,
   HIWORD_UPDATE(RK3328_HDMI_SDA_5V | RK3328_HDMI_SCL_5V,
          RK3328_HDMI_SDA_5V | RK3328_HDMI_SCL_5V));
 else
  regmap_write(hdmi->regmap,
   RK3328_GRF_SOC_CON4,
   HIWORD_UPDATE(0, RK3328_HDMI_SDA_5V |
      RK3328_HDMI_SCL_5V));
 return status;
}
