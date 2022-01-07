
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
struct drm_property_blob {int head_file; TYPE_1__ base; int data; } ;
struct drm_mode_create_blob {int blob_id; int length; int data; } ;
struct drm_file {int blobs; } ;
struct TYPE_4__ {int blob_lock; } ;
struct drm_device {TYPE_2__ mode_config; } ;


 int DRIVER_MODESET ;
 int EFAULT ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct drm_property_blob*) ;
 int PTR_ERR (struct drm_property_blob*) ;
 scalar_t__ copy_from_user (int ,int ,int ) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_property_blob_put (struct drm_property_blob*) ;
 struct drm_property_blob* drm_property_create_blob (struct drm_device*,int ,int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int u64_to_user_ptr (int ) ;

int drm_mode_createblob_ioctl(struct drm_device *dev,
         void *data, struct drm_file *file_priv)
{
 struct drm_mode_create_blob *out_resp = data;
 struct drm_property_blob *blob;
 int ret = 0;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -EOPNOTSUPP;

 blob = drm_property_create_blob(dev, out_resp->length, ((void*)0));
 if (IS_ERR(blob))
  return PTR_ERR(blob);

 if (copy_from_user(blob->data,
      u64_to_user_ptr(out_resp->data),
      out_resp->length)) {
  ret = -EFAULT;
  goto out_blob;
 }




 mutex_lock(&dev->mode_config.blob_lock);
 out_resp->blob_id = blob->base.id;
 list_add_tail(&blob->head_file, &file_priv->blobs);
 mutex_unlock(&dev->mode_config.blob_lock);

 return 0;

out_blob:
 drm_property_blob_put(blob);
 return ret;
}
