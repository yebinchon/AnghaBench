
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int authenticated; TYPE_1__* master; } ;
struct drm_device {int master_mutex; } ;
struct drm_auth {int magic; } ;
struct TYPE_2__ {int magic_map; } ;


 int DRM_DEBUG (char*,int ) ;
 int EINVAL ;
 struct drm_file* idr_find (int *,int ) ;
 int idr_replace (int *,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_authmagic(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 struct drm_auth *auth = data;
 struct drm_file *file;

 DRM_DEBUG("%u\n", auth->magic);

 mutex_lock(&dev->master_mutex);
 file = idr_find(&file_priv->master->magic_map, auth->magic);
 if (file) {
  file->authenticated = 1;
  idr_replace(&file_priv->master->magic_map, ((void*)0), auth->magic);
 }
 mutex_unlock(&dev->master_mutex);

 return file ? 0 : -EINVAL;
}
