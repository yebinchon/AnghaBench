
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int * obj; } ;
struct drm_file {int dummy; } ;


 int drm_gem_handle_create (struct drm_file*,int ,unsigned int*) ;

int drm_gem_fb_create_handle(struct drm_framebuffer *fb, struct drm_file *file,
        unsigned int *handle)
{
 return drm_gem_handle_create(file, fb->obj[0], handle);
}
