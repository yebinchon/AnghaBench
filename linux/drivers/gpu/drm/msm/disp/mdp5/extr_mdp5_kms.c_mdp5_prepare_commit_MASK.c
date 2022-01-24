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
struct msm_kms {int dummy; } ;
struct mdp5_kms {scalar_t__ smp; } ;
struct mdp5_global_state {int /*<<< orphan*/  smp; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 struct mdp5_global_state* FUNC0 (struct mdp5_kms*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 struct mdp5_kms* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_kms*) ; 

__attribute__((used)) static void FUNC4(struct msm_kms *kms, struct drm_atomic_state *state)
{
	struct mdp5_kms *mdp5_kms = FUNC2(FUNC3(kms));
	struct mdp5_global_state *global_state;

	global_state = FUNC0(mdp5_kms);

	if (mdp5_kms->smp)
		FUNC1(mdp5_kms->smp, &global_state->smp);
}