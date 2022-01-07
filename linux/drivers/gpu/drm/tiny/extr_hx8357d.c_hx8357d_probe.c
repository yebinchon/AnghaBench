
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct spi_device {struct device dev; } ;
struct drm_device {int dummy; } ;
struct mipi_dbi_dev {int dbi; struct gpio_desc* backlight; struct drm_device drm; } ;
struct gpio_desc {int dummy; } ;


 int DRM_DEV_ERROR (struct device*,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int device_property_read_u32 (struct device*,char*,int *) ;
 int devm_drm_dev_init (struct device*,struct drm_device*,int *) ;
 struct gpio_desc* devm_gpiod_get (struct device*,char*,int ) ;
 struct gpio_desc* devm_of_find_backlight (struct device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_fbdev_generic_setup (struct drm_device*,int ) ;
 int drm_mode_config_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int hx8357d_driver ;
 int hx8357d_pipe_funcs ;
 int kfree (struct mipi_dbi_dev*) ;
 struct mipi_dbi_dev* kzalloc (int,int ) ;
 int mipi_dbi_dev_init (struct mipi_dbi_dev*,int *,int *,int ) ;
 int mipi_dbi_spi_init (struct spi_device*,int *,struct gpio_desc*) ;
 int spi_set_drvdata (struct spi_device*,struct drm_device*) ;
 int yx350hv15_mode ;

__attribute__((used)) static int hx8357d_probe(struct spi_device *spi)
{
 struct device *dev = &spi->dev;
 struct mipi_dbi_dev *dbidev;
 struct drm_device *drm;
 struct gpio_desc *dc;
 u32 rotation = 0;
 int ret;

 dbidev = kzalloc(sizeof(*dbidev), GFP_KERNEL);
 if (!dbidev)
  return -ENOMEM;

 drm = &dbidev->drm;
 ret = devm_drm_dev_init(dev, drm, &hx8357d_driver);
 if (ret) {
  kfree(dbidev);
  return ret;
 }

 drm_mode_config_init(drm);

 dc = devm_gpiod_get(dev, "dc", GPIOD_OUT_LOW);
 if (IS_ERR(dc)) {
  DRM_DEV_ERROR(dev, "Failed to get gpio 'dc'\n");
  return PTR_ERR(dc);
 }

 dbidev->backlight = devm_of_find_backlight(dev);
 if (IS_ERR(dbidev->backlight))
  return PTR_ERR(dbidev->backlight);

 device_property_read_u32(dev, "rotation", &rotation);

 ret = mipi_dbi_spi_init(spi, &dbidev->dbi, dc);
 if (ret)
  return ret;

 ret = mipi_dbi_dev_init(dbidev, &hx8357d_pipe_funcs, &yx350hv15_mode, rotation);
 if (ret)
  return ret;

 drm_mode_config_reset(drm);

 ret = drm_dev_register(drm, 0);
 if (ret)
  return ret;

 spi_set_drvdata(spi, drm);

 drm_fbdev_generic_setup(drm, 0);

 return 0;
}
