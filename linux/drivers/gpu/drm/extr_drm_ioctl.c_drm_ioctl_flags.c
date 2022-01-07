
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int flags; } ;


 unsigned int DRM_COMMAND_BASE ;
 unsigned int DRM_COMMAND_END ;
 unsigned int DRM_CORE_IOCTL_COUNT ;
 unsigned int array_index_nospec (unsigned int,unsigned int) ;
 TYPE_1__* drm_ioctls ;

bool drm_ioctl_flags(unsigned int nr, unsigned int *flags)
{
 if (nr >= DRM_COMMAND_BASE && nr < DRM_COMMAND_END)
  return 0;

 if (nr >= DRM_CORE_IOCTL_COUNT)
  return 0;
 nr = array_index_nospec(nr, DRM_CORE_IOCTL_COUNT);

 *flags = drm_ioctls[nr].flags;
 return 1;
}
