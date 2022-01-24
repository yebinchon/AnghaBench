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
struct iser_mem_reg {int /*<<< orphan*/ * mem_h; } ;
struct iscsi_iser_task {struct iser_mem_reg* rdma_reg; } ;
struct ib_pool_fmr {int dummy; } ;
typedef  enum iser_data_dir { ____Placeholder_iser_data_dir } iser_data_dir ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_pool_fmr*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 

void FUNC2(struct iscsi_iser_task *iser_task,
			enum iser_data_dir cmd_dir)
{
	struct iser_mem_reg *reg = &iser_task->rdma_reg[cmd_dir];

	if (!reg->mem_h)
		return;

	FUNC1("PHYSICAL Mem.Unregister mem_h %p\n", reg->mem_h);

	FUNC0((struct ib_pool_fmr *)reg->mem_h);

	reg->mem_h = NULL;
}