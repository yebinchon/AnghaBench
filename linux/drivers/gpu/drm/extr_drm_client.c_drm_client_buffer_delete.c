
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct drm_client_buffer {TYPE_1__* client; scalar_t__ handle; scalar_t__ gem; int vaddr; } ;
struct TYPE_2__ {int file; struct drm_device* dev; } ;


 int drm_gem_object_put_unlocked (scalar_t__) ;
 int drm_gem_vunmap (scalar_t__,int ) ;
 int drm_mode_destroy_dumb (struct drm_device*,scalar_t__,int ) ;
 int kfree (struct drm_client_buffer*) ;

__attribute__((used)) static void drm_client_buffer_delete(struct drm_client_buffer *buffer)
{
 struct drm_device *dev = buffer->client->dev;

 drm_gem_vunmap(buffer->gem, buffer->vaddr);

 if (buffer->gem)
  drm_gem_object_put_unlocked(buffer->gem);

 if (buffer->handle)
  drm_mode_destroy_dumb(dev, buffer->handle, buffer->client->file);

 kfree(buffer);
}
