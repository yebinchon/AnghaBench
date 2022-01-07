
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t u64 ;
struct drm_framebuffer {int dummy; } ;



__attribute__((used)) static inline u64 xen_drm_front_fb_to_cookie(struct drm_framebuffer *fb)
{
 return (uintptr_t)fb;
}
