
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_drm_private {int * drm; scalar_t__ num_pipes; } ;
struct device {int dummy; } ;


 struct mtk_drm_private* dev_get_drvdata (struct device*) ;
 int drm_dev_put (int *) ;
 int drm_dev_unregister (int *) ;
 int mtk_drm_kms_deinit (int *) ;

__attribute__((used)) static void mtk_drm_unbind(struct device *dev)
{
 struct mtk_drm_private *private = dev_get_drvdata(dev);

 drm_dev_unregister(private->drm);
 mtk_drm_kms_deinit(private->drm);
 drm_dev_put(private->drm);
 private->num_pipes = 0;
 private->drm = ((void*)0);
}
