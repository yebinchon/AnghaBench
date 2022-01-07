
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_rect {void* y2; void* x2; void* y1; void* x1; } ;


 int drm_rect_visible (struct drm_rect*) ;
 void* max (void*,void*) ;
 void* min (void*,void*) ;

bool drm_rect_intersect(struct drm_rect *r1, const struct drm_rect *r2)
{
 r1->x1 = max(r1->x1, r2->x1);
 r1->y1 = max(r1->y1, r2->y1);
 r1->x2 = min(r1->x2, r2->x2);
 r1->y2 = min(r1->y2, r2->y2);

 return drm_rect_visible(r1);
}
