
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct spi_device {struct device dev; } ;
struct drm_device {int dummy; } ;
struct mipi_dbi {int swap_bytes; int * read_commands; struct gpio_desc* reset; } ;
struct mipi_dbi_dev {struct drm_device drm; struct mipi_dbi dbi; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_3__ {int vdisplay; int hdisplay; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_DEV_ERROR (struct device*,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int device_property_read_u32 (struct device*,char*,int *) ;
 int devm_drm_dev_init (struct device*,struct drm_device*,int *) ;
 void* devm_gpiod_get (struct device*,char*,int ) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_fbdev_generic_setup (struct drm_device*,int ) ;
 int drm_mode_config_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int kfree (struct mipi_dbi_dev*) ;
 struct mipi_dbi_dev* kzalloc (int,int ) ;
 int mipi_dbi_dev_init_with_formats (struct mipi_dbi_dev*,int *,int ,int ,TYPE_1__*,int ,size_t) ;
 int mipi_dbi_spi_init (struct spi_device*,struct mipi_dbi*,struct gpio_desc*) ;
 int spi_set_drvdata (struct spi_device*,struct drm_device*) ;
 int st7586_driver ;
 int st7586_formats ;
 TYPE_1__ st7586_mode ;
 int st7586_pipe_funcs ;

__attribute__((used)) static int st7586_probe(struct spi_device *spi)
{
 struct device *dev = &spi->dev;
 struct mipi_dbi_dev *dbidev;
 struct drm_device *drm;
 struct mipi_dbi *dbi;
 struct gpio_desc *a0;
 u32 rotation = 0;
 size_t bufsize;
 int ret;

 dbidev = kzalloc(sizeof(*dbidev), GFP_KERNEL);
 if (!dbidev)
  return -ENOMEM;

 dbi = &dbidev->dbi;
 drm = &dbidev->drm;
 ret = devm_drm_dev_init(dev, drm, &st7586_driver);
 if (ret) {
  kfree(dbidev);
  return ret;
 }

 drm_mode_config_init(drm);

 bufsize = (st7586_mode.vdisplay + 2) / 3 * st7586_mode.hdisplay;

 dbi->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 if (IS_ERR(dbi->reset)) {
  DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
  return PTR_ERR(dbi->reset);
 }

 a0 = devm_gpiod_get(dev, "a0", GPIOD_OUT_LOW);
 if (IS_ERR(a0)) {
  DRM_DEV_ERROR(dev, "Failed to get gpio 'a0'\n");
  return PTR_ERR(a0);
 }

 device_property_read_u32(dev, "rotation", &rotation);

 ret = mipi_dbi_spi_init(spi, dbi, a0);
 if (ret)
  return ret;


 dbi->read_commands = ((void*)0);

 ret = mipi_dbi_dev_init_with_formats(dbidev, &st7586_pipe_funcs,
          st7586_formats, ARRAY_SIZE(st7586_formats),
          &st7586_mode, rotation, bufsize);
 if (ret)
  return ret;
 dbi->swap_bytes = 1;

 drm_mode_config_reset(drm);

 ret = drm_dev_register(drm, 0);
 if (ret)
  return ret;

 spi_set_drvdata(spi, drm);

 drm_fbdev_generic_setup(drm, 0);

 return 0;
}
