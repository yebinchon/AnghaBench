
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ttm_object_file {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct ttm_object_file* tfile; } ;


 int ttm_prime_fd_to_handle (struct ttm_object_file*,int,int *) ;
 TYPE_1__* vmw_fpriv (struct drm_file*) ;

int vmw_prime_fd_to_handle(struct drm_device *dev,
      struct drm_file *file_priv,
      int fd, u32 *handle)
{
 struct ttm_object_file *tfile = vmw_fpriv(file_priv)->tfile;

 return ttm_prime_fd_to_handle(tfile, fd, handle);
}
