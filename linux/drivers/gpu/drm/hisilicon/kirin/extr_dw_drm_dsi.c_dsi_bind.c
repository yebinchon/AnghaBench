
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dsi {int encoder; } ;
struct dsi_data {struct dw_dsi dsi; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct dsi_data* dev_get_drvdata (struct device*) ;
 int dsi_bridge_init (struct drm_device*,struct dw_dsi*) ;
 int dsi_host_init (struct device*,struct dw_dsi*) ;
 int dw_drm_encoder_init (struct device*,struct drm_device*,int *) ;

__attribute__((used)) static int dsi_bind(struct device *dev, struct device *master, void *data)
{
 struct dsi_data *ddata = dev_get_drvdata(dev);
 struct dw_dsi *dsi = &ddata->dsi;
 struct drm_device *drm_dev = data;
 int ret;

 ret = dw_drm_encoder_init(dev, drm_dev, &dsi->encoder);
 if (ret)
  return ret;

 ret = dsi_host_init(dev, dsi);
 if (ret)
  return ret;

 ret = dsi_bridge_init(drm_dev, dsi);
 if (ret)
  return ret;

 return 0;
}
