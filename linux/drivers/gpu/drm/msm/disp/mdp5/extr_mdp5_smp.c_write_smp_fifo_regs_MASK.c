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
struct mdp5_smp {int /*<<< orphan*/ * pipe_reqprio_fifo_wm2; int /*<<< orphan*/ * pipe_reqprio_fifo_wm1; int /*<<< orphan*/ * pipe_reqprio_fifo_wm0; } ;
struct mdp5_kms {int num_hwpipes; struct mdp5_hw_pipe** hwpipes; } ;
struct mdp5_hw_pipe {int pipe; } ;
typedef  enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct mdp5_kms* FUNC3 (struct mdp5_smp*) ; 
 int /*<<< orphan*/  FUNC4 (struct mdp5_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mdp5_smp *smp)
{
	struct mdp5_kms *mdp5_kms = FUNC3(smp);
	int i;

	for (i = 0; i < mdp5_kms->num_hwpipes; i++) {
		struct mdp5_hw_pipe *hwpipe = mdp5_kms->hwpipes[i];
		enum mdp5_pipe pipe = hwpipe->pipe;

		FUNC4(mdp5_kms, FUNC0(pipe),
			   smp->pipe_reqprio_fifo_wm0[pipe]);
		FUNC4(mdp5_kms, FUNC1(pipe),
			   smp->pipe_reqprio_fifo_wm1[pipe]);
		FUNC4(mdp5_kms, FUNC2(pipe),
			   smp->pipe_reqprio_fifo_wm2[pipe]);
	}
}