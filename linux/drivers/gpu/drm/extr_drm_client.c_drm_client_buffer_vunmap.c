
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_client_buffer {int * vaddr; int gem; } ;


 int drm_gem_vunmap (int ,int *) ;

void drm_client_buffer_vunmap(struct drm_client_buffer *buffer)
{
 drm_gem_vunmap(buffer->gem, buffer->vaddr);
 buffer->vaddr = ((void*)0);
}
