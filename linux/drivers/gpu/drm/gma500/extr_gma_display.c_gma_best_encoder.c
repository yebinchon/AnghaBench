
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct gma_encoder {struct drm_encoder base; } ;
struct drm_connector {int dummy; } ;


 struct gma_encoder* gma_attached_encoder (struct drm_connector*) ;

struct drm_encoder *gma_best_encoder(struct drm_connector *connector)
{
 struct gma_encoder *gma_encoder = gma_attached_encoder(connector);

 return &gma_encoder->base;
}
