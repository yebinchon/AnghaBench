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
struct pblk_rb {int /*<<< orphan*/  nr_entries; int /*<<< orphan*/  sync; int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

unsigned int FUNC2(struct pblk_rb *rb)
{
	unsigned int mem = FUNC0(rb->mem);
	unsigned int sync = FUNC0(rb->sync);

	return FUNC1(mem, sync, rb->nr_entries);
}