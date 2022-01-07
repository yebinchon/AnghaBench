
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux_dev {int index; struct drm_dp_aux_dev* dev; } ;
struct drm_dp_aux {int name; int dev; } ;


 int DRM_DEBUG (char*,int ,int ) ;
 scalar_t__ IS_ERR (struct drm_dp_aux_dev*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct drm_dp_aux_dev*) ;
 struct drm_dp_aux_dev* alloc_drm_dp_aux_dev (struct drm_dp_aux*) ;
 struct drm_dp_aux_dev* device_create (int ,int ,int ,int *,char*,int ) ;
 int drm_dev_major ;
 int drm_dp_aux_dev_class ;
 int drm_dp_aux_unregister_devnode (struct drm_dp_aux*) ;

int drm_dp_aux_register_devnode(struct drm_dp_aux *aux)
{
 struct drm_dp_aux_dev *aux_dev;
 int res;

 aux_dev = alloc_drm_dp_aux_dev(aux);
 if (IS_ERR(aux_dev))
  return PTR_ERR(aux_dev);

 aux_dev->dev = device_create(drm_dp_aux_dev_class, aux->dev,
         MKDEV(drm_dev_major, aux_dev->index), ((void*)0),
         "drm_dp_aux%d", aux_dev->index);
 if (IS_ERR(aux_dev->dev)) {
  res = PTR_ERR(aux_dev->dev);
  aux_dev->dev = ((void*)0);
  goto error;
 }

 DRM_DEBUG("drm_dp_aux_dev: aux [%s] registered as minor %d\n",
    aux->name, aux_dev->index);
 return 0;
error:
 drm_dp_aux_unregister_devnode(aux);
 return res;
}
