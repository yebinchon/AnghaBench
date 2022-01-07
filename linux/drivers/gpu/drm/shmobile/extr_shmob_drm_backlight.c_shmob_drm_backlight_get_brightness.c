
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct shmob_drm_device {TYPE_3__* pdata; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct shmob_drm_connector {TYPE_2__ connector; } ;
struct shmob_drm_backlight_data {int (* get_brightness ) () ;} ;
struct backlight_device {int dummy; } ;
struct TYPE_6__ {struct shmob_drm_backlight_data backlight; } ;
struct TYPE_4__ {struct shmob_drm_device* dev_private; } ;


 struct shmob_drm_connector* bl_get_data (struct backlight_device*) ;
 int stub1 () ;

__attribute__((used)) static int shmob_drm_backlight_get_brightness(struct backlight_device *bdev)
{
 struct shmob_drm_connector *scon = bl_get_data(bdev);
 struct shmob_drm_device *sdev = scon->connector.dev->dev_private;
 const struct shmob_drm_backlight_data *bdata = &sdev->pdata->backlight;

 return bdata->get_brightness();
}
