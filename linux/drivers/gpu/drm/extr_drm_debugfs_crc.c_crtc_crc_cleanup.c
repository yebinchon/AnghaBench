
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_crc {int overflow; int opened; scalar_t__ values_cnt; scalar_t__ tail; scalar_t__ head; int * entries; } ;


 int kfree (int *) ;

__attribute__((used)) static void crtc_crc_cleanup(struct drm_crtc_crc *crc)
{
 kfree(crc->entries);
 crc->overflow = 0;
 crc->entries = ((void*)0);
 crc->head = 0;
 crc->tail = 0;
 crc->values_cnt = 0;
 crc->opened = 0;
}
