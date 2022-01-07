
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_framebuffer {TYPE_2__* nvbo; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ bo; } ;


 int drm_gem_handle_create (struct drm_file*,int *,unsigned int*) ;
 struct nouveau_framebuffer* nouveau_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static int
nouveau_user_framebuffer_create_handle(struct drm_framebuffer *drm_fb,
           struct drm_file *file_priv,
           unsigned int *handle)
{
 struct nouveau_framebuffer *fb = nouveau_framebuffer(drm_fb);

 return drm_gem_handle_create(file_priv, &fb->nvbo->bo.base, handle);
}
