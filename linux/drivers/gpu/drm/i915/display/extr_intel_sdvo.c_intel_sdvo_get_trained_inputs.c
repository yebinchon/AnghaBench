
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo_get_trained_inputs_response {int input0_trained; int input1_trained; } ;
struct intel_sdvo {int dummy; } ;
typedef int response ;


 int BUILD_BUG_ON (int) ;
 int SDVO_CMD_GET_TRAINED_INPUTS ;
 int intel_sdvo_get_value (struct intel_sdvo*,int ,struct intel_sdvo_get_trained_inputs_response*,int) ;

__attribute__((used)) static bool intel_sdvo_get_trained_inputs(struct intel_sdvo *intel_sdvo, bool *input_1, bool *input_2)
{
 struct intel_sdvo_get_trained_inputs_response response;

 BUILD_BUG_ON(sizeof(response) != 1);
 if (!intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_TRAINED_INPUTS,
      &response, sizeof(response)))
  return 0;

 *input_1 = response.input0_trained;
 *input_2 = response.input1_trained;
 return 1;
}
