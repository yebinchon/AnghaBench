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
struct vmw_resource {int dummy; } ;
struct vmw_cmdbuf_res_manager {int dummy; } ;
struct list_head {int dummy; } ;
typedef  enum vmw_view_type { ____Placeholder_vmw_view_type } vmw_view_type ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct vmw_cmdbuf_res_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct list_head*,struct vmw_resource**) ; 
 int /*<<< orphan*/  vmw_cmdbuf_res_view ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(struct vmw_cmdbuf_res_manager *man,
		    u32 user_key, enum vmw_view_type view_type,
		    struct list_head *list,
		    struct vmw_resource **res_p)
{
	if (!FUNC2(user_key, view_type)) {
		FUNC0("Illegal view remove view id.\n");
		return -EINVAL;
	}

	return FUNC1(man, vmw_cmdbuf_res_view,
				     FUNC3(user_key, view_type),
				     list, res_p);
}