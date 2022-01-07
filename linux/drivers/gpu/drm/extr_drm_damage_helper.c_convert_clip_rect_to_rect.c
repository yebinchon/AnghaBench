
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct drm_mode_rect {int y2; int x2; int y1; int x1; } ;
struct drm_clip_rect {int y2; int x2; int y1; int x1; } ;



__attribute__((used)) static void convert_clip_rect_to_rect(const struct drm_clip_rect *src,
          struct drm_mode_rect *dest,
          uint32_t num_clips, uint32_t src_inc)
{
 while (num_clips > 0) {
  dest->x1 = src->x1;
  dest->y1 = src->y1;
  dest->x2 = src->x2;
  dest->y2 = src->y2;
  src += src_inc;
  dest++;
  num_clips--;
 }
}
