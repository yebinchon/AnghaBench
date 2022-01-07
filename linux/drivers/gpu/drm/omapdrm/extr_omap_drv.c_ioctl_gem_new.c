
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bytes; } ;
struct drm_omap_gem_new {int flags; int handle; TYPE_1__ size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int OMAP_BO_USER_MASK ;
 int VERB (char*,struct drm_device*,struct drm_file*,int ,int) ;
 int omap_gem_new_handle (struct drm_device*,struct drm_file*,TYPE_1__,int,int *) ;

__attribute__((used)) static int ioctl_gem_new(struct drm_device *dev, void *data,
  struct drm_file *file_priv)
{
 struct drm_omap_gem_new *args = data;
 u32 flags = args->flags & OMAP_BO_USER_MASK;

 VERB("%p:%p: size=0x%08x, flags=%08x", dev, file_priv,
      args->size.bytes, flags);

 return omap_gem_new_handle(dev, file_priv, args->size, flags,
       &args->handle);
}
