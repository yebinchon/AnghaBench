
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_connector {int base; struct intel_encoder* encoder; } ;


 int drm_connector_attach_encoder (int *,int *) ;

void intel_connector_attach_encoder(struct intel_connector *connector,
        struct intel_encoder *encoder)
{
 connector->encoder = encoder;
 drm_connector_attach_encoder(&connector->base, &encoder->base);
}
