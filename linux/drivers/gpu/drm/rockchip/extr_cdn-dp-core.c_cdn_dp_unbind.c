
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_encoder {TYPE_1__* funcs; } ;
struct drm_connector {TYPE_2__* funcs; } ;
struct device {int dummy; } ;
struct cdn_dp_device {int * edid; int fw; scalar_t__ fw_loaded; int event_work; struct drm_connector connector; struct drm_encoder encoder; } ;
struct TYPE_4__ {int (* destroy ) (struct drm_connector*) ;} ;
struct TYPE_3__ {int (* destroy ) (struct drm_encoder*) ;} ;


 int cancel_work_sync (int *) ;
 int cdn_dp_encoder_disable (struct drm_encoder*) ;
 struct cdn_dp_device* dev_get_drvdata (struct device*) ;
 int kfree (int *) ;
 int pm_runtime_disable (struct device*) ;
 int release_firmware (int ) ;
 int stub1 (struct drm_encoder*) ;
 int stub2 (struct drm_connector*) ;

__attribute__((used)) static void cdn_dp_unbind(struct device *dev, struct device *master, void *data)
{
 struct cdn_dp_device *dp = dev_get_drvdata(dev);
 struct drm_encoder *encoder = &dp->encoder;
 struct drm_connector *connector = &dp->connector;

 cancel_work_sync(&dp->event_work);
 cdn_dp_encoder_disable(encoder);
 encoder->funcs->destroy(encoder);
 connector->funcs->destroy(connector);

 pm_runtime_disable(dev);
 if (dp->fw_loaded)
  release_firmware(dp->fw);
 kfree(dp->edid);
 dp->edid = ((void*)0);
}
