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
struct mdp_kms {int /*<<< orphan*/  in_irq; } ;
struct mdp_irq {int registered; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC1 (struct mdp_kms*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct mdp_kms *mdp_kms, struct mdp_irq *irq)
{
	unsigned long flags;
	bool needs_update = false;

	FUNC2(&list_lock, flags);

	if (irq->registered) {
		irq->registered = false;
		FUNC0(&irq->node);
		needs_update = !mdp_kms->in_irq;
	}

	FUNC3(&list_lock, flags);

	if (needs_update)
		FUNC1(mdp_kms);
}