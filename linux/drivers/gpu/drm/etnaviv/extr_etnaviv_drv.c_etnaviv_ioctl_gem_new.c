
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_etnaviv_gem_new {int flags; int handle; int size; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int ETNA_BO_CACHED ;
 int ETNA_BO_FORCE_MMU ;
 int ETNA_BO_UNCACHED ;
 int ETNA_BO_WC ;
 int etnaviv_gem_new_handle (struct drm_device*,struct drm_file*,int ,int,int *) ;

__attribute__((used)) static int etnaviv_ioctl_gem_new(struct drm_device *dev, void *data,
  struct drm_file *file)
{
 struct drm_etnaviv_gem_new *args = data;

 if (args->flags & ~(ETNA_BO_CACHED | ETNA_BO_WC | ETNA_BO_UNCACHED |
       ETNA_BO_FORCE_MMU))
  return -EINVAL;

 return etnaviv_gem_new_handle(dev, file, args->size,
   args->flags, &args->handle);
}
