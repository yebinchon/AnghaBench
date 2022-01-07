
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ttm_object_file {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct ttm_object_file* tfile; } ;


 int ttm_prime_handle_to_fd (struct ttm_object_file*,int ,int ,int*) ;
 TYPE_1__* vmw_fpriv (struct drm_file*) ;

int vmw_prime_handle_to_fd(struct drm_device *dev,
      struct drm_file *file_priv,
      uint32_t handle, uint32_t flags,
      int *prime_fd)
{
 struct ttm_object_file *tfile = vmw_fpriv(file_priv)->tfile;

 return ttm_prime_handle_to_fd(tfile, handle, flags, prime_fd);
}
