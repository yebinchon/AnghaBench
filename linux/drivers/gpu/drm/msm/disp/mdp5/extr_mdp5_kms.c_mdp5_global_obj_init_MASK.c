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
struct mdp5_kms {int /*<<< orphan*/  glob_state; int /*<<< orphan*/  dev; int /*<<< orphan*/  glob_state_lock; } ;
struct mdp5_global_state {int /*<<< orphan*/  base; struct mdp5_kms* mdp5_kms; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mdp5_global_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mdp5_global_state_funcs ; 

__attribute__((used)) static int FUNC3(struct mdp5_kms *mdp5_kms)
{
	struct mdp5_global_state *state;

	FUNC1(&mdp5_kms->glob_state_lock);

	state = FUNC2(sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	state->mdp5_kms = mdp5_kms;

	FUNC0(mdp5_kms->dev, &mdp5_kms->glob_state,
				    &state->base,
				    &mdp5_global_state_funcs);
	return 0;
}