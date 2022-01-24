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
struct pblk_rb {unsigned int back_thres; int /*<<< orphan*/  nr_entries; int /*<<< orphan*/  mem; int /*<<< orphan*/  sync; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct pblk_rb*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pblk_rb*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct pblk_rb *rb, unsigned int nr_entries,
			       unsigned int *pos)
{
	unsigned int mem;
	unsigned int sync;
	unsigned int threshold;

	sync = FUNC0(rb->sync);
	mem = FUNC0(rb->mem);

	threshold = nr_entries + rb->back_thres;

	if (FUNC1(rb, mem, sync, rb->nr_entries) < threshold)
		return 0;

	if (FUNC2(rb, nr_entries, mem, sync))
		return 0;

	*pos = mem;

	return 1;
}