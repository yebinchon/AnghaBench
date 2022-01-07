
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; TYPE_1__* dev_private; } ;
struct TYPE_3__ {int agp_initialized; int agp_offset; int agp_mm; } ;
typedef TYPE_1__ drm_sis_private_t ;
struct TYPE_4__ {int size; int offset; } ;
typedef TYPE_2__ drm_sis_agp_t ;


 int DRM_DEBUG (char*,int ,int) ;
 int SIS_MM_ALIGN_SHIFT ;
 int drm_mm_init (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int sis_ioctl_agp_init(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 drm_sis_private_t *dev_priv = dev->dev_private;
 drm_sis_agp_t *agp = data;
 dev_priv = dev->dev_private;

 mutex_lock(&dev->struct_mutex);
 drm_mm_init(&dev_priv->agp_mm, 0, agp->size >> SIS_MM_ALIGN_SHIFT);

 dev_priv->agp_initialized = 1;
 dev_priv->agp_offset = agp->offset;
 mutex_unlock(&dev->struct_mutex);

 DRM_DEBUG("offset = %lu, size = %lu\n", agp->offset, agp->size);
 return 0;
}
