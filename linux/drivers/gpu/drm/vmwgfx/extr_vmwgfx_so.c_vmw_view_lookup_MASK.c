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
typedef  enum vmw_view_type { ____Placeholder_vmw_view_type } vmw_view_type ;

/* Variables and functions */
 struct vmw_resource* FUNC0 (struct vmw_cmdbuf_res_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmw_cmdbuf_res_view ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

struct vmw_resource *FUNC2(struct vmw_cmdbuf_res_manager *man,
				     enum vmw_view_type view_type,
				     u32 user_key)
{
	return FUNC0(man, vmw_cmdbuf_res_view,
				     FUNC1(user_key, view_type));
}