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
struct bbc_beep_info {int /*<<< orphan*/  regs; int /*<<< orphan*/  clock_freq; } ;
struct TYPE_2__ {struct bbc_beep_info bbc; } ;
struct sparcspkr_state {char* name; TYPE_1__ u; int /*<<< orphan*/  lock; int /*<<< orphan*/  event; } ;
struct platform_device {int /*<<< orphan*/ * resource; int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  bbc_spkr_event ; 
 int /*<<< orphan*/  FUNC0 (struct sparcspkr_state*) ; 
 struct sparcspkr_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct sparcspkr_state*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *op)
{
	struct sparcspkr_state *state;
	struct bbc_beep_info *info;
	struct device_node *dp;
	int err = -ENOMEM;

	state = FUNC1(sizeof(*state), GFP_KERNEL);
	if (!state)
		goto out_err;

	state->name = "Sparc BBC Speaker";
	state->event = bbc_spkr_event;
	FUNC8(&state->lock);

	dp = FUNC2("/");
	err = -ENODEV;
	if (!dp)
		goto out_free;

	info = &state->u.bbc;
	info->clock_freq = FUNC3(dp, "clock-frequency", 0);
	if (!info->clock_freq)
		goto out_free;

	info->regs = FUNC4(&op->resource[0], 0, 6, "bbc beep");
	if (!info->regs)
		goto out_free;

	FUNC6(op, state);

	err = FUNC7(&op->dev);
	if (err)
		goto out_clear_drvdata;

	return 0;

out_clear_drvdata:
	FUNC5(&op->resource[0], info->regs, 6);

out_free:
	FUNC0(state);
out_err:
	return err;
}