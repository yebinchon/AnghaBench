
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active_mst_links; } ;
struct intel_digital_port {TYPE_1__ dp; } ;



int
intel_dp_mst_encoder_active_links(struct intel_digital_port *intel_dig_port)
{
 return intel_dig_port->dp.active_mst_links;
}
