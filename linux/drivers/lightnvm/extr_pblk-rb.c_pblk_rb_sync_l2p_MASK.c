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
struct pblk_rb {int /*<<< orphan*/  w_lock; int /*<<< orphan*/  nr_entries; int /*<<< orphan*/  l2p_update; int /*<<< orphan*/  sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pblk_rb*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct pblk_rb *rb)
{
	unsigned int sync;
	unsigned int to_update;

	FUNC3(&rb->w_lock);

	/* Protect from reads and writes */
	sync = FUNC2(&rb->sync);

	to_update = FUNC1(sync, rb->l2p_update, rb->nr_entries);
	FUNC0(rb, to_update);

	FUNC4(&rb->w_lock);
}