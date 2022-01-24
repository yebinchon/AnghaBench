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
struct pblk_rb {int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pblk_rb*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk_rb*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pblk_rb *rb, unsigned int nr_entries,
			     unsigned int *pos)
{
	if (!FUNC0(rb, nr_entries, pos))
		return 0;

	/* Protect from read count */
	FUNC2(&rb->mem, FUNC1(rb, *pos, nr_entries));
	return 1;
}