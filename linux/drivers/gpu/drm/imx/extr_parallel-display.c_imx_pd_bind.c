
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct imx_parallel_display {struct device* dev; int bridge; int panel; int bus_format; int edid_len; int edid; } ;
struct drm_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MEDIA_BUS_FMT_RGB565_1X16 ;
 int MEDIA_BUS_FMT_RGB666_1X18 ;
 int MEDIA_BUS_FMT_RGB666_1X24_CPADHI ;
 int MEDIA_BUS_FMT_RGB888_1X24 ;
 int dev_set_drvdata (struct device*,struct imx_parallel_display*) ;
 struct imx_parallel_display* devm_kzalloc (struct device*,int,int ) ;
 int drm_of_find_panel_or_bridge (struct device_node*,int,int ,int *,int *) ;
 int imx_pd_register (struct drm_device*,struct imx_parallel_display*) ;
 int kmemdup (int const*,int ,int ) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int imx_pd_bind(struct device *dev, struct device *master, void *data)
{
 struct drm_device *drm = data;
 struct device_node *np = dev->of_node;
 const u8 *edidp;
 struct imx_parallel_display *imxpd;
 int ret;
 u32 bus_format = 0;
 const char *fmt;

 imxpd = devm_kzalloc(dev, sizeof(*imxpd), GFP_KERNEL);
 if (!imxpd)
  return -ENOMEM;

 edidp = of_get_property(np, "edid", &imxpd->edid_len);
 if (edidp)
  imxpd->edid = kmemdup(edidp, imxpd->edid_len, GFP_KERNEL);

 ret = of_property_read_string(np, "interface-pix-fmt", &fmt);
 if (!ret) {
  if (!strcmp(fmt, "rgb24"))
   bus_format = MEDIA_BUS_FMT_RGB888_1X24;
  else if (!strcmp(fmt, "rgb565"))
   bus_format = MEDIA_BUS_FMT_RGB565_1X16;
  else if (!strcmp(fmt, "bgr666"))
   bus_format = MEDIA_BUS_FMT_RGB666_1X18;
  else if (!strcmp(fmt, "lvds666"))
   bus_format = MEDIA_BUS_FMT_RGB666_1X24_CPADHI;
 }
 imxpd->bus_format = bus_format;


 ret = drm_of_find_panel_or_bridge(np, 1, 0, &imxpd->panel, &imxpd->bridge);
 if (ret && ret != -ENODEV)
  return ret;

 imxpd->dev = dev;

 ret = imx_pd_register(drm, imxpd);
 if (ret)
  return ret;

 dev_set_drvdata(dev, imxpd);

 return 0;
}
