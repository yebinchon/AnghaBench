
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_crc {int tail; int head; int lock; } ;


 int CIRC_CNT (int ,int ,int ) ;
 int DRM_CRC_ENTRIES_NR ;
 int assert_spin_locked (int *) ;

__attribute__((used)) static int crtc_crc_data_count(struct drm_crtc_crc *crc)
{
 assert_spin_locked(&crc->lock);
 return CIRC_CNT(crc->head, crc->tail, DRM_CRC_ENTRIES_NR);
}
