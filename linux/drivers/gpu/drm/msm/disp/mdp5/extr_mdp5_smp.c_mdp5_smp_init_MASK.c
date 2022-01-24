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
struct mdp5_smp_state {int /*<<< orphan*/  state; } ;
struct mdp5_smp_block {int /*<<< orphan*/  reserved; int /*<<< orphan*/  reserved_state; int /*<<< orphan*/  mmb_size; int /*<<< orphan*/  mmb_count; } ;
struct mdp5_smp {int /*<<< orphan*/  reserved; int /*<<< orphan*/  blk_cnt; int /*<<< orphan*/  blk_size; int /*<<< orphan*/  dev; } ;
struct mdp5_kms {int /*<<< orphan*/  dev; } ;
struct mdp5_global_state {struct mdp5_smp_state smp; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mdp5_smp* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mdp5_smp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct mdp5_global_state* FUNC3 (struct mdp5_kms*) ; 
 int /*<<< orphan*/  FUNC4 (struct mdp5_smp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int) ; 

struct mdp5_smp *FUNC7(struct mdp5_kms *mdp5_kms, const struct mdp5_smp_block *cfg)
{
	struct mdp5_smp_state *state;
	struct mdp5_global_state *global_state;
	struct mdp5_smp *smp = NULL;
	int ret;

	smp = FUNC2(sizeof(*smp), GFP_KERNEL);
	if (FUNC6(!smp)) {
		ret = -ENOMEM;
		goto fail;
	}

	smp->dev = mdp5_kms->dev;
	smp->blk_cnt = cfg->mmb_count;
	smp->blk_size = cfg->mmb_size;

	global_state = FUNC3(mdp5_kms);
	state = &global_state->smp;

	/* statically tied MMBs cannot be re-allocated: */
	FUNC1(state->state, cfg->reserved_state, smp->blk_cnt);
	FUNC5(smp->reserved, cfg->reserved, sizeof(smp->reserved));

	return smp;
fail:
	if (smp)
		FUNC4(smp);

	return FUNC0(ret);
}