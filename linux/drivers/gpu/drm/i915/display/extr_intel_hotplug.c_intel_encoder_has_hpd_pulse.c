
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int base; } ;
struct TYPE_2__ {int * hpd_pulse; } ;


 TYPE_1__* enc_to_dig_port (int *) ;
 scalar_t__ intel_encoder_is_dig_port (struct intel_encoder*) ;

__attribute__((used)) static bool intel_encoder_has_hpd_pulse(struct intel_encoder *encoder)
{
 return intel_encoder_is_dig_port(encoder) &&
  enc_to_dig_port(&encoder->base)->hpd_pulse != ((void*)0);
}
