#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pending_block {int vec_cnt; struct pending_block* data; TYPE_1__* vecs; } ;
struct log_writes_c {int dummy; } ;
struct TYPE_2__ {scalar_t__ bv_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pending_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct log_writes_c*) ; 

__attribute__((used)) static void FUNC3(struct log_writes_c *lc,
			       struct pending_block *block)
{
	int i;

	for (i = 0; i < block->vec_cnt; i++) {
		if (block->vecs[i].bv_page)
			FUNC0(block->vecs[i].bv_page);
	}
	FUNC1(block->data);
	FUNC1(block);
	FUNC2(lc);
}