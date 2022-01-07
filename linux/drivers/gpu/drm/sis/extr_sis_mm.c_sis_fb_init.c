
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; TYPE_1__* dev_private; } ;
struct TYPE_3__ {int vram_initialized; int vram_offset; int vram_mm; } ;
typedef TYPE_1__ drm_sis_private_t ;
struct TYPE_4__ {int size; int offset; } ;
typedef TYPE_2__ drm_sis_fb_t ;


 int DRM_DEBUG (char*,int ,int) ;
 int SIS_MM_ALIGN_SHIFT ;
 int drm_mm_init (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int sis_fb_init(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_sis_private_t *dev_priv = dev->dev_private;
 drm_sis_fb_t *fb = data;

 mutex_lock(&dev->struct_mutex);


 drm_mm_init(&dev_priv->vram_mm, 0, fb->size >> SIS_MM_ALIGN_SHIFT);

 dev_priv->vram_initialized = 1;
 dev_priv->vram_offset = fb->offset;

 mutex_unlock(&dev->struct_mutex);
 DRM_DEBUG("offset = %lu, size = %lu\n", fb->offset, fb->size);

 return 0;
}
