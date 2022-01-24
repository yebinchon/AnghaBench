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
struct mdp4_kms {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_MDP4_INTR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct mdp4_kms*) ; 
 int /*<<< orphan*/  FUNC1 (struct mdp4_kms*) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp4_kms*,int /*<<< orphan*/ ,int) ; 
 struct mdp4_kms* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_kms*) ; 

void FUNC5(struct msm_kms *kms)
{
	struct mdp4_kms *mdp4_kms = FUNC3(FUNC4(kms));
	FUNC1(mdp4_kms);
	FUNC2(mdp4_kms, REG_MDP4_INTR_ENABLE, 0x00000000);
	FUNC0(mdp4_kms);
}