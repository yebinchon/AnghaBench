
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_rect {int x1; int x2; int y1; int y2; } ;


 int INT_MAX ;
 int INT_MIN ;
 void* clamp_t (int ,int,int ,int ) ;
 int clip_scaled (int ,int ,int) ;
 int drm_rect_height (struct drm_rect*) ;
 int drm_rect_visible (struct drm_rect*) ;
 int drm_rect_width (struct drm_rect*) ;
 int int64_t ;

bool drm_rect_clip_scaled(struct drm_rect *src, struct drm_rect *dst,
     const struct drm_rect *clip)
{
 int diff;

 diff = clip->x1 - dst->x1;
 if (diff > 0) {
  u32 new_src_w = clip_scaled(drm_rect_width(src),
         drm_rect_width(dst), diff);

  src->x1 = clamp_t(int64_t, src->x2 - new_src_w, INT_MIN, INT_MAX);
  dst->x1 = clip->x1;
 }
 diff = clip->y1 - dst->y1;
 if (diff > 0) {
  u32 new_src_h = clip_scaled(drm_rect_height(src),
         drm_rect_height(dst), diff);

  src->y1 = clamp_t(int64_t, src->y2 - new_src_h, INT_MIN, INT_MAX);
  dst->y1 = clip->y1;
 }
 diff = dst->x2 - clip->x2;
 if (diff > 0) {
  u32 new_src_w = clip_scaled(drm_rect_width(src),
         drm_rect_width(dst), diff);

  src->x2 = clamp_t(int64_t, src->x1 + new_src_w, INT_MIN, INT_MAX);
  dst->x2 = clip->x2;
 }
 diff = dst->y2 - clip->y2;
 if (diff > 0) {
  u32 new_src_h = clip_scaled(drm_rect_height(src),
         drm_rect_height(dst), diff);

  src->y2 = clamp_t(int64_t, src->y1 + new_src_h, INT_MIN, INT_MAX);
  dst->y2 = clip->y2;
 }

 return drm_rect_visible(dst);
}
