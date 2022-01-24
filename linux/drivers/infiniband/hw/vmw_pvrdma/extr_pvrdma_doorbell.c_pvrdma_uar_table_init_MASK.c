#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct pvrdma_id_table {int /*<<< orphan*/  table; int /*<<< orphan*/  lock; void* mask; void* max; scalar_t__ top; scalar_t__ last; } ;
struct TYPE_4__ {struct pvrdma_id_table tbl; } ;
struct pvrdma_dev {TYPE_1__ uar_table; TYPE_3__* dsr; } ;
struct TYPE_5__ {void* max_uar; } ;
struct TYPE_6__ {TYPE_2__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct pvrdma_dev *dev)
{
	u32 num = dev->dsr->caps.max_uar;
	u32 mask = num - 1;
	struct pvrdma_id_table *tbl = &dev->uar_table.tbl;

	if (!FUNC1(num))
		return -EINVAL;

	tbl->last = 0;
	tbl->top = 0;
	tbl->max = num;
	tbl->mask = mask;
	FUNC4(&tbl->lock);
	tbl->table = FUNC2(FUNC0(num), sizeof(long), GFP_KERNEL);
	if (!tbl->table)
		return -ENOMEM;

	/* 0th UAR is taken by the device. */
	FUNC3(0, tbl->table);

	return 0;
}