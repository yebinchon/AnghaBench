#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct input_dev {TYPE_1__* ff; } ;
struct hidpp_ff_private_data {int dummy; } ;
struct TYPE_2__ {struct hidpp_ff_private_data* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  HIDPP_FF_EFFECTID_NONE ; 
 int /*<<< orphan*/  HIDPP_FF_SET_GLOBAL_GAINS ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hidpp_ff_private_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct input_dev *dev, u16 gain)
{
	struct hidpp_ff_private_data *data = dev->ff->private;
	u8 params[4];

	FUNC1("Setting gain to %d.\n", gain);

	params[0] = gain >> 8;
	params[1] = gain & 255;
	params[2] = 0; /* no boost */
	params[3] = 0;

	FUNC2(data, HIDPP_FF_EFFECTID_NONE, HIDPP_FF_SET_GLOBAL_GAINS, params, FUNC0(params));
}