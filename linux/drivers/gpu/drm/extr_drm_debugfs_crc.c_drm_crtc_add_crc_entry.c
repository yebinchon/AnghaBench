
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_crtc_crc_entry {int has_frame_counter; int crcs; int frame; } ;
struct drm_crtc_crc {int head; int tail; int overflow; int values_cnt; int wq; int lock; struct drm_crtc_crc_entry* entries; } ;
struct drm_crtc {struct drm_crtc_crc crc; } ;


 int CIRC_SPACE (int,int,int) ;
 int DRM_CRC_ENTRIES_NR ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOBUFS ;
 int memcpy (int *,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

int drm_crtc_add_crc_entry(struct drm_crtc *crtc, bool has_frame,
      uint32_t frame, uint32_t *crcs)
{
 struct drm_crtc_crc *crc = &crtc->crc;
 struct drm_crtc_crc_entry *entry;
 int head, tail;
 unsigned long flags;

 spin_lock_irqsave(&crc->lock, flags);


 if (!crc->entries) {
  spin_unlock_irqrestore(&crc->lock, flags);
  return -EINVAL;
 }

 head = crc->head;
 tail = crc->tail;

 if (CIRC_SPACE(head, tail, DRM_CRC_ENTRIES_NR) < 1) {
  bool was_overflow = crc->overflow;

  crc->overflow = 1;
  spin_unlock_irqrestore(&crc->lock, flags);

  if (!was_overflow)
   DRM_ERROR("Overflow of CRC buffer, userspace reads too slow.\n");

  return -ENOBUFS;
 }

 entry = &crc->entries[head];
 entry->frame = frame;
 entry->has_frame_counter = has_frame;
 memcpy(&entry->crcs, crcs, sizeof(*crcs) * crc->values_cnt);

 head = (head + 1) & (DRM_CRC_ENTRIES_NR - 1);
 crc->head = head;

 spin_unlock_irqrestore(&crc->lock, flags);

 wake_up_interruptible(&crc->wq);

 return 0;
}
