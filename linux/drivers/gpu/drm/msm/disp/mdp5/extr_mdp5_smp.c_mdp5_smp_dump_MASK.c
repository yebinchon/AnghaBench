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
typedef  size_t u32 ;
struct mdp5_smp_state {void* state; void** client_state; } ;
struct mdp5_smp {int blk_cnt; } ;
struct mdp5_kms {int num_hwpipes; int /*<<< orphan*/  glob_state_lock; struct mdp5_hw_pipe** hwpipes; } ;
struct mdp5_hw_pipe_state {struct drm_plane** hwpipe_to_plane; } ;
struct mdp5_hw_pipe {size_t idx; int pipe; } ;
struct mdp5_global_state {struct mdp5_smp_state smp; struct mdp5_hw_pipe_state hwpipe; } ;
struct drm_printer {int dummy; } ;
struct drm_plane {int /*<<< orphan*/ * name; } ;
typedef  enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;

/* Variables and functions */
 int FUNC0 (void*,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_printer*,char*,...) ; 
 struct mdp5_kms* FUNC5 (struct mdp5_smp*) ; 
 struct mdp5_global_state* FUNC6 (struct mdp5_kms*) ; 
 size_t FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int) ; 

void FUNC10(struct mdp5_smp *smp, struct drm_printer *p)
{
	struct mdp5_kms *mdp5_kms = FUNC5(smp);
	struct mdp5_hw_pipe_state *hwpstate;
	struct mdp5_smp_state *state;
	struct mdp5_global_state *global_state;
	int total = 0, i, j;

	FUNC4(p, "name\tinuse\tplane\n");
	FUNC4(p, "----\t-----\t-----\n");

	if (FUNC1())
		FUNC2(&mdp5_kms->glob_state_lock, NULL);

	global_state = FUNC6(mdp5_kms);

	/* grab these *after* we hold the state_lock */
	hwpstate = &global_state->hwpipe;
	state = &global_state->smp;

	for (i = 0; i < mdp5_kms->num_hwpipes; i++) {
		struct mdp5_hw_pipe *hwpipe = mdp5_kms->hwpipes[i];
		struct drm_plane *plane = hwpstate->hwpipe_to_plane[hwpipe->idx];
		enum mdp5_pipe pipe = hwpipe->pipe;
		for (j = 0; j < FUNC9(pipe); j++) {
			u32 cid = FUNC7(pipe, j);
			void *cs = state->client_state[cid];
			int inuse = FUNC0(cs, smp->blk_cnt);

			FUNC4(p, "%s:%d\t%d\t%s\n",
				FUNC8(pipe), j, inuse,
				plane ? plane->name : NULL);

			total += inuse;
		}
	}

	FUNC4(p, "TOTAL:\t%d\t(of %d)\n", total, smp->blk_cnt);
	FUNC4(p, "AVAIL:\t%d\n", smp->blk_cnt -
			FUNC0(state->state, smp->blk_cnt));

	if (FUNC1())
		FUNC3(&mdp5_kms->glob_state_lock);
}