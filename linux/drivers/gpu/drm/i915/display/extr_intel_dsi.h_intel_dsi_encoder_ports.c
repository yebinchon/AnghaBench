
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct intel_encoder {int base; } ;
struct TYPE_2__ {int ports; } ;


 TYPE_1__* enc_to_intel_dsi (int *) ;

__attribute__((used)) static inline u16 intel_dsi_encoder_ports(struct intel_encoder *encoder)
{
 return enc_to_intel_dsi(&encoder->base)->ports;
}
