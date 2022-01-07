
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct drm_connector {struct drm_encoder* encoder; TYPE_1__* state; } ;
struct TYPE_2__ {struct drm_encoder* best_encoder; } ;



__attribute__((used)) static struct drm_encoder *drm_connector_get_encoder(struct drm_connector *connector)
{


 if (connector->state)
  return connector->state->best_encoder;
 return connector->encoder;
}
