
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {struct drm_crtc* i_private; } ;
struct file {int dummy; } ;
struct drm_crtc_crc_entry {int dummy; } ;
struct drm_crtc_crc {int opened; size_t values_cnt; int lock; int source; struct drm_crtc_crc_entry* entries; } ;
struct drm_crtc {TYPE_2__* funcs; int mutex; TYPE_1__* state; int dev; struct drm_crtc_crc crc; } ;
struct TYPE_4__ {int (* verify_crc_source ) (struct drm_crtc*,int ,size_t*) ;int (* set_crc_source ) (struct drm_crtc*,int ) ;} ;
struct TYPE_3__ {int active; } ;


 int DRM_CRC_ENTRIES_NR ;
 size_t DRM_MAX_CRC_NR ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int crtc_crc_cleanup (struct drm_crtc_crc*) ;
 scalar_t__ drm_drv_uses_atomic_modeset (int ) ;
 int drm_modeset_lock_single_interruptible (int *) ;
 int drm_modeset_unlock (int *) ;
 struct drm_crtc_crc_entry* kcalloc (int ,int,int ) ;
 int kfree (struct drm_crtc_crc_entry*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct drm_crtc*,int ,size_t*) ;
 int stub2 (struct drm_crtc*,int ) ;

__attribute__((used)) static int crtc_crc_open(struct inode *inode, struct file *filep)
{
 struct drm_crtc *crtc = inode->i_private;
 struct drm_crtc_crc *crc = &crtc->crc;
 struct drm_crtc_crc_entry *entries = ((void*)0);
 size_t values_cnt;
 int ret = 0;

 if (drm_drv_uses_atomic_modeset(crtc->dev)) {
  ret = drm_modeset_lock_single_interruptible(&crtc->mutex);
  if (ret)
   return ret;

  if (!crtc->state->active)
   ret = -EIO;
  drm_modeset_unlock(&crtc->mutex);

  if (ret)
   return ret;
 }

 ret = crtc->funcs->verify_crc_source(crtc, crc->source, &values_cnt);
 if (ret)
  return ret;

 if (WARN_ON(values_cnt > DRM_MAX_CRC_NR))
  return -EINVAL;

 if (WARN_ON(values_cnt == 0))
  return -EINVAL;

 entries = kcalloc(DRM_CRC_ENTRIES_NR, sizeof(*entries), GFP_KERNEL);
 if (!entries)
  return -ENOMEM;

 spin_lock_irq(&crc->lock);
 if (!crc->opened) {
  crc->opened = 1;
  crc->entries = entries;
  crc->values_cnt = values_cnt;
 } else {
  ret = -EBUSY;
 }
 spin_unlock_irq(&crc->lock);

 if (ret) {
  kfree(entries);
  return ret;
 }

 ret = crtc->funcs->set_crc_source(crtc, crc->source);
 if (ret)
  goto err;

 return 0;

err:
 spin_lock_irq(&crc->lock);
 crtc_crc_cleanup(crc);
 spin_unlock_irq(&crc->lock);
 return ret;
}
