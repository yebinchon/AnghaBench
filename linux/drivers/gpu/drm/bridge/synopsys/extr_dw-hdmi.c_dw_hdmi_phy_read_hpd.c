
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int HDMI_PHY_HPD ;
 int HDMI_PHY_STAT0 ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int hdmi_readb (struct dw_hdmi*,int ) ;

enum drm_connector_status dw_hdmi_phy_read_hpd(struct dw_hdmi *hdmi,
            void *data)
{
 return hdmi_readb(hdmi, HDMI_PHY_STAT0) & HDMI_PHY_HPD ?
  connector_status_connected : connector_status_disconnected;
}
