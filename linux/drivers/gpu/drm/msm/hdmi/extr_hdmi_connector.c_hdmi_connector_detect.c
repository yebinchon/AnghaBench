
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_platform_config {struct hdmi_gpio_data* gpios; } ;
struct hdmi_gpio_data {int gpiod; } ;
struct hdmi_connector {struct hdmi* hdmi; } ;
struct hdmi {struct hdmi_platform_config* config; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int DBG (char*,int) ;
 size_t HPD_GPIO_INDEX ;
 int detect_gpio (struct hdmi*) ;
 int detect_reg (struct hdmi*) ;
 int mdelay (int) ;
 struct hdmi_connector* to_hdmi_connector (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status hdmi_connector_detect(
  struct drm_connector *connector, bool force)
{
 struct hdmi_connector *hdmi_connector = to_hdmi_connector(connector);
 struct hdmi *hdmi = hdmi_connector->hdmi;
 const struct hdmi_platform_config *config = hdmi->config;
 struct hdmi_gpio_data hpd_gpio = config->gpios[HPD_GPIO_INDEX];
 enum drm_connector_status stat_gpio, stat_reg;
 int retry = 20;





 if (!hpd_gpio.gpiod)
  return detect_reg(hdmi);

 do {
  stat_gpio = detect_gpio(hdmi);
  stat_reg = detect_reg(hdmi);

  if (stat_gpio == stat_reg)
   break;

  mdelay(10);
 } while (--retry);





 if (stat_gpio != stat_reg) {
  DBG("HDMI_HPD_INT_STATUS tells us: %d", stat_reg);
  DBG("hpd gpio tells us: %d", stat_gpio);
 }

 return stat_gpio;
}
