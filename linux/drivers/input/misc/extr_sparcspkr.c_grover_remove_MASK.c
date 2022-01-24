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
struct grover_beep_info {int /*<<< orphan*/  freq_regs; int /*<<< orphan*/  enable_reg; } ;
struct TYPE_2__ {struct grover_beep_info grover; } ;
struct sparcspkr_state {int /*<<< orphan*/  (* event ) (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct input_dev* input_dev; TYPE_1__ u; } ;
struct platform_device {int /*<<< orphan*/ * resource; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_SND ; 
 int /*<<< orphan*/  SND_BELL ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct sparcspkr_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct sparcspkr_state* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *op)
{
	struct sparcspkr_state *state = FUNC3(op);
	struct grover_beep_info *info = &state->u.grover;
	struct input_dev *input_dev = state->input_dev;

	/* turn off the speaker */
	state->event(input_dev, EV_SND, SND_BELL, 0);

	FUNC0(input_dev);

	FUNC2(&op->resource[3], info->enable_reg, 1);
	FUNC2(&op->resource[2], info->freq_regs, 2);

	FUNC1(state);

	return 0;
}