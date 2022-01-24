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
typedef  int uint32_t ;
struct mdp_kms {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_MDP4_INTR_CLEAR ; 
 int /*<<< orphan*/  REG_MDP4_INTR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mdp_kms*) ; 

void FUNC2(struct mdp_kms *mdp_kms, uint32_t irqmask,
		uint32_t old_irqmask)
{
	FUNC0(FUNC1(mdp_kms), REG_MDP4_INTR_CLEAR,
		irqmask ^ (irqmask & old_irqmask));
	FUNC0(FUNC1(mdp_kms), REG_MDP4_INTR_ENABLE, irqmask);
}