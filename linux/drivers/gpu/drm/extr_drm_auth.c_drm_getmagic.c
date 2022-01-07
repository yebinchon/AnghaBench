
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int magic; TYPE_1__* master; } ;
struct drm_device {int master_mutex; } ;
struct drm_auth {int magic; } ;
struct TYPE_2__ {int magic_map; } ;


 int DRM_DEBUG (char*,int) ;
 int GFP_KERNEL ;
 int idr_alloc (int *,struct drm_file*,int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_getmagic(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 struct drm_auth *auth = data;
 int ret = 0;

 mutex_lock(&dev->master_mutex);
 if (!file_priv->magic) {
  ret = idr_alloc(&file_priv->master->magic_map, file_priv,
    1, 0, GFP_KERNEL);
  if (ret >= 0)
   file_priv->magic = ret;
 }
 auth->magic = file_priv->magic;
 mutex_unlock(&dev->master_mutex);

 DRM_DEBUG("%u\n", auth->magic);

 return ret < 0 ? ret : 0;
}
