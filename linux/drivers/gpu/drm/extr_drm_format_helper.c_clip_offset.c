
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_rect {unsigned int y1; unsigned int x1; } ;



__attribute__((used)) static unsigned int clip_offset(struct drm_rect *clip,
    unsigned int pitch, unsigned int cpp)
{
 return clip->y1 * pitch + clip->x1 * cpp;
}
