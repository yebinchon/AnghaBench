
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property_blob {size_t length; int head_global; int base; void* data; struct drm_device* dev; int head_file; } ;
struct TYPE_2__ {int blob_lock; int property_blob_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_MODE_OBJECT_BLOB ;
 int EINVAL ;
 int ENOMEM ;
 struct drm_property_blob* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ULONG_MAX ;
 int __drm_mode_object_add (struct drm_device*,int *,int ,int,int ) ;
 int drm_property_free_blob ;
 int kvfree (struct drm_property_blob*) ;
 struct drm_property_blob* kvzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (void*,void const*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct drm_property_blob *
drm_property_create_blob(struct drm_device *dev, size_t length,
    const void *data)
{
 struct drm_property_blob *blob;
 int ret;

 if (!length || length > ULONG_MAX - sizeof(struct drm_property_blob))
  return ERR_PTR(-EINVAL);

 blob = kvzalloc(sizeof(struct drm_property_blob)+length, GFP_KERNEL);
 if (!blob)
  return ERR_PTR(-ENOMEM);



 INIT_LIST_HEAD(&blob->head_file);
 blob->data = (void *)blob + sizeof(*blob);
 blob->length = length;
 blob->dev = dev;

 if (data)
  memcpy(blob->data, data, length);

 ret = __drm_mode_object_add(dev, &blob->base, DRM_MODE_OBJECT_BLOB,
        1, drm_property_free_blob);
 if (ret) {
  kvfree(blob);
  return ERR_PTR(-EINVAL);
 }

 mutex_lock(&dev->mode_config.blob_lock);
 list_add_tail(&blob->head_global,
               &dev->mode_config.property_blob_list);
 mutex_unlock(&dev->mode_config.blob_lock);

 return blob;
}
