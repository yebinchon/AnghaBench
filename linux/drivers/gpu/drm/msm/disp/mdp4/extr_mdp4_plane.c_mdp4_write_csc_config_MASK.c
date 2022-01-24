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
struct mdp4_kms {int dummy; } ;
struct csc_cfg {int /*<<< orphan*/ * post_clamp; int /*<<< orphan*/ * pre_clamp; int /*<<< orphan*/ * post_bias; int /*<<< orphan*/ * pre_bias; int /*<<< orphan*/ * matrix; } ;
typedef  enum mdp4_pipe { ____Placeholder_mdp4_pipe } mdp4_pipe ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mdp4_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mdp4_kms *mdp4_kms,
		enum mdp4_pipe pipe, struct csc_cfg *csc)
{
	int i;

	for (i = 0; i < FUNC0(csc->matrix); i++) {
		FUNC6(mdp4_kms, FUNC1(pipe, i),
				csc->matrix[i]);
	}

	for (i = 0; i < FUNC0(csc->post_bias) ; i++) {
		FUNC6(mdp4_kms, FUNC4(pipe, i),
				csc->pre_bias[i]);

		FUNC6(mdp4_kms, FUNC2(pipe, i),
				csc->post_bias[i]);
	}

	for (i = 0; i < FUNC0(csc->post_clamp) ; i++) {
		FUNC6(mdp4_kms, FUNC5(pipe, i),
				csc->pre_clamp[i]);

		FUNC6(mdp4_kms, FUNC3(pipe, i),
				csc->post_clamp[i]);
	}
}