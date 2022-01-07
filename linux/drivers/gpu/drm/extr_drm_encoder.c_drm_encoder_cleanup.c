
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int head; int name; int base; struct drm_bridge* bridge; struct drm_device* dev; } ;
struct TYPE_2__ {int num_encoder; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_bridge {struct drm_bridge* next; } ;


 int drm_bridge_detach (struct drm_bridge*) ;
 int drm_mode_object_unregister (struct drm_device*,int *) ;
 int kfree (int ) ;
 int list_del (int *) ;
 int memset (struct drm_encoder*,int ,int) ;

void drm_encoder_cleanup(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;






 if (encoder->bridge) {
  struct drm_bridge *bridge = encoder->bridge;
  struct drm_bridge *next;

  while (bridge) {
   next = bridge->next;
   drm_bridge_detach(bridge);
   bridge = next;
  }
 }

 drm_mode_object_unregister(dev, &encoder->base);
 kfree(encoder->name);
 list_del(&encoder->head);
 dev->mode_config.num_encoder--;

 memset(encoder, 0, sizeof(*encoder));
}
