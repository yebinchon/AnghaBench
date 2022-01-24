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
struct vmw_resource {int id; struct vmw_private* dev_priv; } ;
struct vmw_private {int /*<<< orphan*/  binding_mutex; } ;
struct vmw_dx_shader {int committed; int id; int /*<<< orphan*/  cotable_head; int /*<<< orphan*/  cotable; } ;
typedef  enum vmw_cmdbuf_res_state { ____Placeholder_vmw_cmdbuf_res_state } vmw_cmdbuf_res_state ;

/* Variables and functions */
 int VMW_CMDBUF_RES_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vmw_dx_shader* FUNC4 (struct vmw_resource*) ; 

__attribute__((used)) static void FUNC5(struct vmw_resource *res,
					enum vmw_cmdbuf_res_state state)
{
	struct vmw_dx_shader *shader = FUNC4(res);
	struct vmw_private *dev_priv = res->dev_priv;

	if (state == VMW_CMDBUF_RES_ADD) {
		FUNC1(&dev_priv->binding_mutex);
		FUNC3(shader->cotable,
					 &shader->cotable_head);
		shader->committed = true;
		res->id = shader->id;
		FUNC2(&dev_priv->binding_mutex);
	} else {
		FUNC1(&dev_priv->binding_mutex);
		FUNC0(&shader->cotable_head);
		shader->committed = false;
		res->id = -1;
		FUNC2(&dev_priv->binding_mutex);
	}
}