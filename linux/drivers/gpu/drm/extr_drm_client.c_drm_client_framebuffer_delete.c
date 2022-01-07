
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_client_buffer {int dummy; } ;


 int drm_client_buffer_delete (struct drm_client_buffer*) ;
 int drm_client_buffer_rmfb (struct drm_client_buffer*) ;

void drm_client_framebuffer_delete(struct drm_client_buffer *buffer)
{
 if (!buffer)
  return;

 drm_client_buffer_rmfb(buffer);
 drm_client_buffer_delete(buffer);
}
