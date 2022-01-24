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
struct pblk_rb {int /*<<< orphan*/  subm; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk_rb*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

unsigned int FUNC3(struct pblk_rb *rb, unsigned int nr_entries)
{
	unsigned int subm;

	subm = FUNC0(rb->subm);
	/* Commit read means updating submission pointer */
	FUNC2(&rb->subm, FUNC1(rb, subm, nr_entries));

	return subm;
}