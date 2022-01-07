
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_digital_port {int dummy; } ;
struct intel_connector {int base; } ;
struct TYPE_2__ {int base; } ;


 struct intel_digital_port* enc_to_dig_port (int *) ;
 TYPE_1__* intel_attached_encoder (int *) ;

__attribute__((used)) static inline struct intel_digital_port *
conn_to_dig_port(struct intel_connector *connector)
{
 return enc_to_dig_port(&intel_attached_encoder(&connector->base)->base);
}
