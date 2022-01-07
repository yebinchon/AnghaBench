
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct intel_connector {int base; scalar_t__ mst_port; } ;
struct TYPE_2__ {struct intel_encoder base; } ;


 int WARN_ON (int) ;
 TYPE_1__* dp_to_dig_port (scalar_t__) ;
 struct intel_encoder* intel_attached_encoder (int *) ;

__attribute__((used)) static struct intel_encoder *
intel_connector_primary_encoder(struct intel_connector *connector)
{
 struct intel_encoder *encoder;

 if (connector->mst_port)
  return &dp_to_dig_port(connector->mst_port)->base;

 encoder = intel_attached_encoder(&connector->base);
 WARN_ON(!encoder);

 return encoder;
}
