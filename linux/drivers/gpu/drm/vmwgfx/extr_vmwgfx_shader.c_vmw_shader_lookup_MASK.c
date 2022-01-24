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
typedef  int /*<<< orphan*/  SVGA3dShaderType ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct vmw_resource* FUNC0 (int /*<<< orphan*/ ) ; 
 struct vmw_resource* FUNC1 (struct vmw_cmdbuf_res_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmw_cmdbuf_res_shader ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct vmw_resource *
FUNC4(struct vmw_cmdbuf_res_manager *man,
		  u32 user_key,
		  SVGA3dShaderType shader_type)
{
	if (!FUNC2(user_key, shader_type))
		return FUNC0(-EINVAL);

	return FUNC1(man, vmw_cmdbuf_res_shader,
				     FUNC3(user_key, shader_type));
}