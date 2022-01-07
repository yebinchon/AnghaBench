
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_connector {int dummy; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int hdp_disable (struct hdmi_connector*) ;
 int kfree (struct hdmi_connector*) ;
 struct hdmi_connector* to_hdmi_connector (struct drm_connector*) ;

__attribute__((used)) static void hdmi_connector_destroy(struct drm_connector *connector)
{
 struct hdmi_connector *hdmi_connector = to_hdmi_connector(connector);

 hdp_disable(hdmi_connector);

 drm_connector_cleanup(connector);

 kfree(hdmi_connector);
}
