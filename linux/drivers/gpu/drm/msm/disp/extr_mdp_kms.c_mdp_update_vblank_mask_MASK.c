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
typedef  int /*<<< orphan*/  uint32_t ;
struct mdp_kms {int /*<<< orphan*/  vblank_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp_kms*) ; 

void FUNC3(struct mdp_kms *mdp_kms, uint32_t mask, bool enable)
{
	unsigned long flags;

	FUNC0(&list_lock, flags);
	if (enable)
		mdp_kms->vblank_mask |= mask;
	else
		mdp_kms->vblank_mask &= ~mask;
	FUNC2(mdp_kms);
	FUNC1(&list_lock, flags);
}