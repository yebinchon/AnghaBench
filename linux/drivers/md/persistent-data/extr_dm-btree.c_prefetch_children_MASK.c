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
struct frame {unsigned int nr_children; int /*<<< orphan*/  n; } ;
struct dm_block_manager {int dummy; } ;
struct del_stack {int /*<<< orphan*/  tm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_block_manager*,int /*<<< orphan*/ ) ; 
 struct dm_block_manager* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct del_stack *s, struct frame *f)
{
	unsigned i;
	struct dm_block_manager *bm = FUNC1(s->tm);

	for (i = 0; i < f->nr_children; i++)
		FUNC0(bm, FUNC2(f->n, i));
}