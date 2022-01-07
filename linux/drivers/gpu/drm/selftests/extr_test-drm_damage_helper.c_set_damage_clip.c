
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_rect {int x1; int y1; int x2; int y2; } ;



__attribute__((used)) static void set_damage_clip(struct drm_mode_rect *r, int x1, int y1, int x2,
       int y2)
{
 r->x1 = x1;
 r->y1 = y1;
 r->x2 = x2;
 r->y2 = y2;
}
