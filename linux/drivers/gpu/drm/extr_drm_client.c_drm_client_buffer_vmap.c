
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_client_buffer {void* vaddr; int gem; } ;


 scalar_t__ IS_ERR (void*) ;
 void* drm_gem_vmap (int ) ;

void *drm_client_buffer_vmap(struct drm_client_buffer *buffer)
{
 void *vaddr;

 if (buffer->vaddr)
  return buffer->vaddr;
 vaddr = drm_gem_vmap(buffer->gem);
 if (IS_ERR(vaddr))
  return vaddr;

 buffer->vaddr = vaddr;

 return vaddr;
}
