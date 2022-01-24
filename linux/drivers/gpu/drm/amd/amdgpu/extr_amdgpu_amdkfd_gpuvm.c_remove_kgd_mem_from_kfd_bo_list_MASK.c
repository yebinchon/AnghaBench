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
struct ttm_validate_buffer {int /*<<< orphan*/  head; } ;
struct kgd_mem {struct ttm_validate_buffer validate_list; } ;
struct amdkfd_process_info {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct kgd_mem *mem,
		struct amdkfd_process_info *process_info)
{
	struct ttm_validate_buffer *bo_list_entry;

	bo_list_entry = &mem->validate_list;
	FUNC1(&process_info->lock);
	FUNC0(&bo_list_entry->head);
	FUNC2(&process_info->lock);
}