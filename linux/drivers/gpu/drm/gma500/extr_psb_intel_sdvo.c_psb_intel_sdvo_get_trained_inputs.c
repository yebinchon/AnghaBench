
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_sdvo_get_trained_inputs_response {int input0_trained; int input1_trained; } ;
struct psb_intel_sdvo {int dummy; } ;
typedef int response ;


 int BUILD_BUG_ON (int) ;
 int SDVO_CMD_GET_TRAINED_INPUTS ;
 int psb_intel_sdvo_get_value (struct psb_intel_sdvo*,int ,struct psb_intel_sdvo_get_trained_inputs_response*,int) ;

__attribute__((used)) static bool psb_intel_sdvo_get_trained_inputs(struct psb_intel_sdvo *psb_intel_sdvo, bool *input_1, bool *input_2)
{
 struct psb_intel_sdvo_get_trained_inputs_response response;

 BUILD_BUG_ON(sizeof(response) != 1);
 if (!psb_intel_sdvo_get_value(psb_intel_sdvo, SDVO_CMD_GET_TRAINED_INPUTS,
      &response, sizeof(response)))
  return 0;

 *input_1 = response.input0_trained;
 *input_2 = response.input1_trained;
 return 1;
}
