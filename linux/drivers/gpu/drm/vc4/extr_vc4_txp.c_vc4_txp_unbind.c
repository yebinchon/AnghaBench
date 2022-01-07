
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; } ;
struct vc4_txp {TYPE_1__ connector; } ;
struct vc4_dev {int * txp; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 void* dev_get_drvdata (struct device*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_txp_connector_destroy (int *) ;

__attribute__((used)) static void vc4_txp_unbind(struct device *dev, struct device *master,
      void *data)
{
 struct drm_device *drm = dev_get_drvdata(master);
 struct vc4_dev *vc4 = to_vc4_dev(drm);
 struct vc4_txp *txp = dev_get_drvdata(dev);

 vc4_txp_connector_destroy(&txp->connector.base);

 vc4->txp = ((void*)0);
}
