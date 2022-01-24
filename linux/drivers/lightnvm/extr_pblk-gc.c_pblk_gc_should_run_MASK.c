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
struct pblk_rl {int /*<<< orphan*/  werr_lines; } ;
struct pblk_gc {scalar_t__ gc_active; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct pblk_rl*) ; 
 unsigned int FUNC2 (struct pblk_rl*) ; 

__attribute__((used)) static bool FUNC3(struct pblk_gc *gc, struct pblk_rl *rl)
{
	unsigned int nr_blocks_free, nr_blocks_need;
	unsigned int werr_lines = FUNC0(&rl->werr_lines);

	nr_blocks_need = FUNC1(rl);
	nr_blocks_free = FUNC2(rl);

	/* This is not critical, no need to take lock here */
	return ((werr_lines > 0) ||
		((gc->gc_active) && (nr_blocks_need > nr_blocks_free)));
}