
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int type; } ;







__attribute__((used)) static inline bool intel_encoder_is_dig_port(struct intel_encoder *encoder)
{
 switch (encoder->type) {
 case 131:
 case 130:
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
