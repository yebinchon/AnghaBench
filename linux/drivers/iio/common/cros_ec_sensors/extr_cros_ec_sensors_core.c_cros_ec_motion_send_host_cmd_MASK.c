#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct ec_response_motion_sense {int dummy; } ;
struct cros_ec_sensors_core_state {TYPE_2__* msg; struct ec_response_motion_sense* resp; TYPE_1__* ec; struct ec_response_motion_sense param; } ;
struct TYPE_4__ {struct ec_response_motion_sense* data; int /*<<< orphan*/  insize; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_response; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ec_response_motion_sense*,struct ec_response_motion_sense*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC3(struct cros_ec_sensors_core_state *state,
				 u16 opt_length)
{
	int ret;

	if (opt_length)
		state->msg->insize = FUNC2(opt_length, state->ec->max_response);
	else
		state->msg->insize = state->ec->max_response;

	FUNC1(state->msg->data, &state->param, sizeof(state->param));

	ret = FUNC0(state->ec, state->msg);
	if (ret < 0)
		return ret;

	if (ret &&
	    state->resp != (struct ec_response_motion_sense *)state->msg->data)
		FUNC1(state->resp, state->msg->data, ret);

	return 0;
}