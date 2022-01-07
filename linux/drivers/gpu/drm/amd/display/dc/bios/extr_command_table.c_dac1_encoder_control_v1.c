
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bios_parser {int dummy; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
typedef int DAC_ENCODER_CONTROL_PS_ALLOCATION ;


 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 int DAC1EncoderControl ;
 scalar_t__ EXEC_BIOS_CMD_TABLE (int ,int ) ;
 int dac_encoder_control_prepare_params (int *,int,int ,int ) ;

__attribute__((used)) static enum bp_result dac1_encoder_control_v1(
 struct bios_parser *bp,
 bool enable,
 uint32_t pixel_clock,
 uint8_t dac_standard)
{
 enum bp_result result = BP_RESULT_FAILURE;
 DAC_ENCODER_CONTROL_PS_ALLOCATION params;

 dac_encoder_control_prepare_params(
  &params,
  enable,
  pixel_clock,
  dac_standard);

 if (EXEC_BIOS_CMD_TABLE(DAC1EncoderControl, params))
  result = BP_RESULT_OK;

 return result;
}
