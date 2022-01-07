
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int usPixelClock; int ucAction; int ucDacStandard; } ;
typedef TYPE_1__ DAC_ENCODER_CONTROL_PS_ALLOCATION ;


 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static void dac_encoder_control_prepare_params(
 DAC_ENCODER_CONTROL_PS_ALLOCATION *params,
 bool enable,
 uint32_t pixel_clock,
 uint8_t dac_standard)
{
 params->ucDacStandard = dac_standard;
 if (enable)
  params->ucAction = ATOM_ENABLE;
 else
  params->ucAction = ATOM_DISABLE;




 params->usPixelClock = cpu_to_le16((uint16_t)(pixel_clock / 10));
}
