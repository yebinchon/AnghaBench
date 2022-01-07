
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_dw_hdmi {TYPE_1__* data; } ;
struct dw_hdmi {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {int (* top_read ) (struct meson_dw_hdmi*,int ) ;} ;


 int HDMITX_TOP_STAT0 ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int stub1 (struct meson_dw_hdmi*,int ) ;

__attribute__((used)) static enum drm_connector_status dw_hdmi_read_hpd(struct dw_hdmi *hdmi,
        void *data)
{
 struct meson_dw_hdmi *dw_hdmi = (struct meson_dw_hdmi *)data;

 return !!dw_hdmi->data->top_read(dw_hdmi, HDMITX_TOP_STAT0) ?
  connector_status_connected : connector_status_disconnected;
}
