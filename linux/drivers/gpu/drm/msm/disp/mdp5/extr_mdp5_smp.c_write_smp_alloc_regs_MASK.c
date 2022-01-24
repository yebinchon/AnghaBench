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
struct mdp5_smp {int blk_cnt; int /*<<< orphan*/ * alloc_r; int /*<<< orphan*/ * alloc_w; } ;
struct mdp5_kms {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mdp5_kms* FUNC2 (struct mdp5_smp*) ; 
 int /*<<< orphan*/  FUNC3 (struct mdp5_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mdp5_smp *smp)
{
	struct mdp5_kms *mdp5_kms = FUNC2(smp);
	int i, num_regs;

	num_regs = smp->blk_cnt / 3 + 1;

	for (i = 0; i < num_regs; i++) {
		FUNC3(mdp5_kms, FUNC1(i),
			   smp->alloc_w[i]);
		FUNC3(mdp5_kms, FUNC0(i),
			   smp->alloc_r[i]);
	}
}