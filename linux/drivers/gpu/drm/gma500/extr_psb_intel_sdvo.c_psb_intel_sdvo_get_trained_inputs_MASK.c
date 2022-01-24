#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct psb_intel_sdvo_get_trained_inputs_response {int input0_trained; int input1_trained; } ;
struct psb_intel_sdvo {int dummy; } ;
typedef  int /*<<< orphan*/  response ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SDVO_CMD_GET_TRAINED_INPUTS ; 
 int /*<<< orphan*/  FUNC1 (struct psb_intel_sdvo*,int /*<<< orphan*/ ,struct psb_intel_sdvo_get_trained_inputs_response*,int) ; 

__attribute__((used)) static bool FUNC2(struct psb_intel_sdvo *psb_intel_sdvo, bool *input_1, bool *input_2)
{
	struct psb_intel_sdvo_get_trained_inputs_response response;

	FUNC0(sizeof(response) != 1);
	if (!FUNC1(psb_intel_sdvo, SDVO_CMD_GET_TRAINED_INPUTS,
				  &response, sizeof(response)))
		return false;

	*input_1 = response.input0_trained;
	*input_2 = response.input1_trained;
	return true;
}