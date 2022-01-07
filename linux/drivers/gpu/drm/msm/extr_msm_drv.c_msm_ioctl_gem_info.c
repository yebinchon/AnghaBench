
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_object {char* name; } ;
struct drm_msm_gem_info {int info; int len; int value; int handle; scalar_t__ pad; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOENT ;




 int copy_from_user (char*,int ,int) ;
 int copy_to_user (int ,char*,int) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int isprint (char) ;
 int msm_gem_mmap_offset (struct drm_gem_object*) ;
 int msm_ioctl_gem_info_iova (struct drm_device*,struct drm_gem_object*,int *) ;
 int strlen (char*) ;
 struct msm_gem_object* to_msm_bo (struct drm_gem_object*) ;
 int u64_to_user_ptr (int ) ;

__attribute__((used)) static int msm_ioctl_gem_info(struct drm_device *dev, void *data,
  struct drm_file *file)
{
 struct drm_msm_gem_info *args = data;
 struct drm_gem_object *obj;
 struct msm_gem_object *msm_obj;
 int i, ret = 0;

 if (args->pad)
  return -EINVAL;

 switch (args->info) {
 case 129:
 case 131:

  if (args->len)
   return -EINVAL;
  break;
 case 128:
 case 130:
  break;
 default:
  return -EINVAL;
 }

 obj = drm_gem_object_lookup(file, args->handle);
 if (!obj)
  return -ENOENT;

 msm_obj = to_msm_bo(obj);

 switch (args->info) {
 case 129:
  args->value = msm_gem_mmap_offset(obj);
  break;
 case 131:
  ret = msm_ioctl_gem_info_iova(dev, obj, &args->value);
  break;
 case 128:

  if (args->len >= sizeof(msm_obj->name)) {
   ret = -EINVAL;
   break;
  }
  if (copy_from_user(msm_obj->name, u64_to_user_ptr(args->value),
       args->len)) {
   msm_obj->name[0] = '\0';
   ret = -EFAULT;
   break;
  }
  msm_obj->name[args->len] = '\0';
  for (i = 0; i < args->len; i++) {
   if (!isprint(msm_obj->name[i])) {
    msm_obj->name[i] = '\0';
    break;
   }
  }
  break;
 case 130:
  if (args->value && (args->len < strlen(msm_obj->name))) {
   ret = -EINVAL;
   break;
  }
  args->len = strlen(msm_obj->name);
  if (args->value) {
   if (copy_to_user(u64_to_user_ptr(args->value),
      msm_obj->name, args->len))
    ret = -EFAULT;
  }
  break;
 }

 drm_gem_object_put_unlocked(obj);

 return ret;
}
