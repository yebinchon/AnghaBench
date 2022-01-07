
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; } ;
struct drm_encoder {TYPE_1__ base; } ;
struct drm_connector {scalar_t__* encoder_ids; int encoder; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ WARN_ON (int ) ;

int drm_connector_attach_encoder(struct drm_connector *connector,
     struct drm_encoder *encoder)
{
 int i;
 if (WARN_ON(connector->encoder))
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(connector->encoder_ids); i++) {
  if (connector->encoder_ids[i] == 0) {
   connector->encoder_ids[i] = encoder->base.id;
   return 0;
  }
 }
 return -ENOMEM;
}
