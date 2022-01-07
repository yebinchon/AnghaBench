
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_encoder {int base; } ;
struct gma_connector {int base; struct gma_encoder* encoder; } ;


 int drm_connector_attach_encoder (int *,int *) ;

void gma_connector_attach_encoder(struct gma_connector *connector,
      struct gma_encoder *encoder)
{
 connector->encoder = encoder;
 drm_connector_attach_encoder(&connector->base,
       &encoder->base);
}
