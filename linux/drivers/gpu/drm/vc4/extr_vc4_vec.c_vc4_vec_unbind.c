
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_vec {int encoder; int connector; } ;
struct vc4_dev {int * vec; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 void* dev_get_drvdata (struct device*) ;
 int drm_encoder_cleanup (int ) ;
 int pm_runtime_disable (struct device*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_vec_connector_destroy (int ) ;

__attribute__((used)) static void vc4_vec_unbind(struct device *dev, struct device *master,
      void *data)
{
 struct drm_device *drm = dev_get_drvdata(master);
 struct vc4_dev *vc4 = to_vc4_dev(drm);
 struct vc4_vec *vec = dev_get_drvdata(dev);

 vc4_vec_connector_destroy(vec->connector);
 drm_encoder_cleanup(vec->encoder);
 pm_runtime_disable(dev);

 vc4->vec = ((void*)0);
}
