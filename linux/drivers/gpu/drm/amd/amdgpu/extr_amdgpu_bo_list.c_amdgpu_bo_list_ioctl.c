
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list_handle; } ;
struct TYPE_4__ {int list_handle; int operation; int bo_number; } ;
union drm_amdgpu_bo_list {TYPE_1__ out; TYPE_2__ in; } ;
typedef int uint32_t ;
struct drm_file {struct amdgpu_fpriv* driver_priv; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_amdgpu_bo_list_entry {int dummy; } ;
struct amdgpu_fpriv {int bo_list_lock; int bo_list_handles; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo_list {int dummy; } ;





 int EINVAL ;
 int GFP_KERNEL ;
 int IS_ERR (struct amdgpu_bo_list*) ;
 int PTR_ERR (struct amdgpu_bo_list*) ;
 int amdgpu_bo_create_list_entry_array (TYPE_2__*,struct drm_amdgpu_bo_list_entry**) ;
 int amdgpu_bo_list_create (struct amdgpu_device*,struct drm_file*,struct drm_amdgpu_bo_list_entry*,int ,struct amdgpu_bo_list**) ;
 int amdgpu_bo_list_destroy (struct amdgpu_fpriv*,int) ;
 int amdgpu_bo_list_put (struct amdgpu_bo_list*) ;
 int idr_alloc (int *,struct amdgpu_bo_list*,int,int ,int ) ;
 struct amdgpu_bo_list* idr_replace (int *,struct amdgpu_bo_list*,int) ;
 int kvfree (struct drm_amdgpu_bo_list_entry*) ;
 int memset (union drm_amdgpu_bo_list*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int amdgpu_bo_list_ioctl(struct drm_device *dev, void *data,
    struct drm_file *filp)
{
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_fpriv *fpriv = filp->driver_priv;
 union drm_amdgpu_bo_list *args = data;
 uint32_t handle = args->in.list_handle;
 struct drm_amdgpu_bo_list_entry *info = ((void*)0);
 struct amdgpu_bo_list *list, *old;
 int r;

 r = amdgpu_bo_create_list_entry_array(&args->in, &info);
 if (r)
  return r;

 switch (args->in.operation) {
 case 130:
  r = amdgpu_bo_list_create(adev, filp, info, args->in.bo_number,
       &list);
  if (r)
   goto error_free;

  mutex_lock(&fpriv->bo_list_lock);
  r = idr_alloc(&fpriv->bo_list_handles, list, 1, 0, GFP_KERNEL);
  mutex_unlock(&fpriv->bo_list_lock);
  if (r < 0) {
   goto error_put_list;
  }

  handle = r;
  break;

 case 129:
  amdgpu_bo_list_destroy(fpriv, handle);
  handle = 0;
  break;

 case 128:
  r = amdgpu_bo_list_create(adev, filp, info, args->in.bo_number,
       &list);
  if (r)
   goto error_free;

  mutex_lock(&fpriv->bo_list_lock);
  old = idr_replace(&fpriv->bo_list_handles, list, handle);
  mutex_unlock(&fpriv->bo_list_lock);

  if (IS_ERR(old)) {
   r = PTR_ERR(old);
   goto error_put_list;
  }

  amdgpu_bo_list_put(old);
  break;

 default:
  r = -EINVAL;
  goto error_free;
 }

 memset(args, 0, sizeof(*args));
 args->out.list_handle = handle;
 kvfree(info);

 return 0;

error_put_list:
 amdgpu_bo_list_put(list);

error_free:
 kvfree(info);
 return r;
}
