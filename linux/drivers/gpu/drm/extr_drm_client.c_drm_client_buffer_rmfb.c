
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_client_buffer {TYPE_2__* fb; TYPE_3__* client; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {TYPE_4__* dev; int file; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ base; } ;


 int DRM_DEV_ERROR (int ,char*,int ,int) ;
 int drm_mode_rmfb (TYPE_4__*,int ,int ) ;

__attribute__((used)) static void drm_client_buffer_rmfb(struct drm_client_buffer *buffer)
{
 int ret;

 if (!buffer->fb)
  return;

 ret = drm_mode_rmfb(buffer->client->dev, buffer->fb->base.id, buffer->client->file);
 if (ret)
  DRM_DEV_ERROR(buffer->client->dev->dev,
         "Error removing FB:%u (%d)\n", buffer->fb->base.id, ret);

 buffer->fb = ((void*)0);
}
