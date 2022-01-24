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
typedef  int /*<<< orphan*/  SVGA3dShaderType ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct vmw_cmdbuf_res_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct list_head*,struct vmw_resource**) ; 
 int /*<<< orphan*/  vmw_cmdbuf_res_shader ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct vmw_cmdbuf_res_manager *man,
		      u32 user_key, SVGA3dShaderType shader_type,
		      struct list_head *list)
{
	struct vmw_resource *dummy;

	if (!FUNC1(user_key, shader_type))
		return -EINVAL;

	return FUNC0(man, vmw_cmdbuf_res_shader,
				     FUNC2(user_key, shader_type),
				     list, &dummy);
}