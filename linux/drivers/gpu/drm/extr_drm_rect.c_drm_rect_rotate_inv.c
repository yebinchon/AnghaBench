
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_rect {scalar_t__ y1; scalar_t__ y2; scalar_t__ x1; scalar_t__ x2; } ;


 unsigned int DRM_MODE_REFLECT_X ;
 unsigned int DRM_MODE_REFLECT_Y ;




 unsigned int DRM_MODE_ROTATE_MASK ;

void drm_rect_rotate_inv(struct drm_rect *r,
    int width, int height,
    unsigned int rotation)
{
 struct drm_rect tmp;

 switch (rotation & DRM_MODE_ROTATE_MASK) {
 case 131:
  break;
 case 128:
  tmp = *r;
  r->x1 = width - tmp.y2;
  r->x2 = width - tmp.y1;
  r->y1 = tmp.x1;
  r->y2 = tmp.x2;
  break;
 case 130:
  tmp = *r;
  r->x1 = width - tmp.x2;
  r->x2 = width - tmp.x1;
  r->y1 = height - tmp.y2;
  r->y2 = height - tmp.y1;
  break;
 case 129:
  tmp = *r;
  r->x1 = tmp.y1;
  r->x2 = tmp.y2;
  r->y1 = height - tmp.x2;
  r->y2 = height - tmp.x1;
  break;
 default:
  break;
 }

 if (rotation & (DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y)) {
  tmp = *r;

  if (rotation & DRM_MODE_REFLECT_X) {
   r->x1 = width - tmp.x2;
   r->x2 = width - tmp.x1;
  }

  if (rotation & DRM_MODE_REFLECT_Y) {
   r->y1 = height - tmp.y2;
   r->y2 = height - tmp.y1;
  }
 }
}
