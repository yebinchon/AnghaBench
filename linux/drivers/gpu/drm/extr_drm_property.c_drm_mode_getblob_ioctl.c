
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_property_blob {scalar_t__ length; int data; } ;
struct drm_mode_get_blob {scalar_t__ length; int data; int blob_id; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRIVER_MODESET ;
 int EFAULT ;
 int ENOENT ;
 int EOPNOTSUPP ;
 scalar_t__ copy_to_user (int ,int ,scalar_t__) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_property_blob_put (struct drm_property_blob*) ;
 struct drm_property_blob* drm_property_lookup_blob (struct drm_device*,int ) ;
 int u64_to_user_ptr (int ) ;

int drm_mode_getblob_ioctl(struct drm_device *dev,
      void *data, struct drm_file *file_priv)
{
 struct drm_mode_get_blob *out_resp = data;
 struct drm_property_blob *blob;
 int ret = 0;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -EOPNOTSUPP;

 blob = drm_property_lookup_blob(dev, out_resp->blob_id);
 if (!blob)
  return -ENOENT;

 if (out_resp->length == blob->length) {
  if (copy_to_user(u64_to_user_ptr(out_resp->data),
     blob->data,
     blob->length)) {
   ret = -EFAULT;
   goto unref;
  }
 }
 out_resp->length = blob->length;
unref:
 drm_property_blob_put(blob);

 return ret;
}
