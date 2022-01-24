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
typedef  int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct au8522_state {int std; scalar_t__ operational_mode; } ;

/* Variables and functions */
 scalar_t__ AU8522_ANALOG_MODE ; 
 int EINVAL ; 
 int V4L2_STD_NTSC_M ; 
 int V4L2_STD_PAL_M ; 
 int /*<<< orphan*/  FUNC0 (struct au8522_state*) ; 
 struct au8522_state* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, v4l2_std_id std)
{
	struct au8522_state *state = FUNC1(sd);

	if ((std & (V4L2_STD_PAL_M | V4L2_STD_NTSC_M)) == 0)
		return -EINVAL;

	state->std = std;

	if (state->operational_mode == AU8522_ANALOG_MODE)
		FUNC0(state);

	return 0;
}