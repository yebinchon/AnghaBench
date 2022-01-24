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
typedef  int /*<<< orphan*/  u32 ;
struct dpu_hw_blk_ops {int dummy; } ;
struct dpu_hw_blk {int id; int /*<<< orphan*/  list; struct dpu_hw_blk_ops ops; int /*<<< orphan*/  refcount; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dpu_hw_blk_list ; 
 int /*<<< orphan*/  dpu_hw_blk_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct dpu_hw_blk *hw_blk, u32 type, int id,
		struct dpu_hw_blk_ops *ops)
{
	FUNC0(&hw_blk->list);
	hw_blk->type = type;
	hw_blk->id = id;
	FUNC1(&hw_blk->refcount, 0);

	if (ops)
		hw_blk->ops = *ops;

	FUNC3(&dpu_hw_blk_lock);
	FUNC2(&hw_blk->list, &dpu_hw_blk_list);
	FUNC4(&dpu_hw_blk_lock);
}