
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_drm_private {struct hdmi* hdmi; } ;
struct hdmi_platform_config {char* mmio_name; char* qfprom_mmio_name; TYPE_1__* gpios; } ;
struct hdmi {int * audio_pdev; } ;
struct gpio_desc {int * audio_pdev; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct device_node {int dummy; } ;
struct device {struct hdmi_platform_config* platform_data; struct device_node* of_node; } ;
struct TYPE_4__ {char* name; int value; int output; int label; } ;
struct TYPE_3__ {int value; int output; struct hdmi* gpiod; } ;


 int DBG (char*,char const*) ;
 int DRM_DEV_ERROR (struct device*,char*,struct device_node*) ;
 int DRM_ERROR (char*,int) ;
 int ENXIO ;
 int GPIOD_ASIS ;
 int HDMI_MAX_NUM_GPIO ;
 scalar_t__ IS_ERR (struct hdmi*) ;
 int PTR_ERR (struct hdmi*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 struct hdmi* devm_gpiod_get_optional (struct device*,char const*,int ) ;
 int gpiod_set_consumer_name (struct hdmi*,int ) ;
 TYPE_2__* msm_hdmi_gpio_pdata ;
 struct hdmi* msm_hdmi_init (int ) ;
 int msm_hdmi_register_audio_driver (struct hdmi*,struct device*) ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 scalar_t__ sscanf (char const*,char*,char*) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static int msm_hdmi_bind(struct device *dev, struct device *master, void *data)
{
 struct drm_device *drm = dev_get_drvdata(master);
 struct msm_drm_private *priv = drm->dev_private;
 struct hdmi_platform_config *hdmi_cfg;
 struct hdmi *hdmi;
 struct device_node *of_node = dev->of_node;
 int i, err;

 hdmi_cfg = (struct hdmi_platform_config *)
   of_device_get_match_data(dev);
 if (!hdmi_cfg) {
  DRM_DEV_ERROR(dev, "unknown hdmi_cfg: %pOFn\n", of_node);
  return -ENXIO;
 }

 hdmi_cfg->mmio_name = "core_physical";
 hdmi_cfg->qfprom_mmio_name = "qfprom_physical";

 for (i = 0; i < HDMI_MAX_NUM_GPIO; i++) {
  const char *name = msm_hdmi_gpio_pdata[i].name;
  struct gpio_desc *gpiod;






  gpiod = devm_gpiod_get_optional(dev, name, GPIOD_ASIS);

  if (IS_ERR(gpiod))
   return PTR_ERR(gpiod);
  if (!gpiod) {

   char name3[32];






   if (sscanf(name, "qcom,hdmi-tx-%s", name3))
    gpiod = devm_gpiod_get_optional(dev, name3, GPIOD_ASIS);
   if (IS_ERR(gpiod))
    return PTR_ERR(gpiod);
   if (!gpiod)
    DBG("failed to get gpio: %s", name);
  }
  hdmi_cfg->gpios[i].gpiod = gpiod;
  if (gpiod)
   gpiod_set_consumer_name(gpiod, msm_hdmi_gpio_pdata[i].label);
  hdmi_cfg->gpios[i].output = msm_hdmi_gpio_pdata[i].output;
  hdmi_cfg->gpios[i].value = msm_hdmi_gpio_pdata[i].value;
 }

 dev->platform_data = hdmi_cfg;

 hdmi = msm_hdmi_init(to_platform_device(dev));
 if (IS_ERR(hdmi))
  return PTR_ERR(hdmi);
 priv->hdmi = hdmi;

 err = msm_hdmi_register_audio_driver(hdmi, dev);
 if (err) {
  DRM_ERROR("Failed to attach an audio codec %d\n", err);
  hdmi->audio_pdev = ((void*)0);
 }

 return 0;
}
