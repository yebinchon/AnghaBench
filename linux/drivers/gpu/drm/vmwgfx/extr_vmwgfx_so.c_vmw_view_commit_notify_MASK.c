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
struct vmw_view {int committed; int view_id; int /*<<< orphan*/  srf_head; int /*<<< orphan*/  cotable_head; int /*<<< orphan*/  cotable; int /*<<< orphan*/  srf; } ;
struct vmw_surface {int /*<<< orphan*/  view_list; } ;
struct vmw_resource {int id; struct vmw_private* dev_priv; } ;
struct vmw_private {int /*<<< orphan*/  binding_mutex; } ;
typedef  enum vmw_cmdbuf_res_state { ____Placeholder_vmw_cmdbuf_res_state } vmw_cmdbuf_res_state ;

/* Variables and functions */
 int VMW_CMDBUF_RES_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vmw_surface* FUNC5 (int /*<<< orphan*/ ) ; 
 struct vmw_view* FUNC6 (struct vmw_resource*) ; 

__attribute__((used)) static void FUNC7(struct vmw_resource *res,
				   enum vmw_cmdbuf_res_state state)
{
	struct vmw_view *view = FUNC6(res);
	struct vmw_private *dev_priv = res->dev_priv;

	FUNC2(&dev_priv->binding_mutex);
	if (state == VMW_CMDBUF_RES_ADD) {
		struct vmw_surface *srf = FUNC5(view->srf);

		FUNC0(&view->srf_head, &srf->view_list);
		FUNC4(view->cotable, &view->cotable_head);
		view->committed = true;
		res->id = view->view_id;

	} else {
		FUNC1(&view->cotable_head);
		FUNC1(&view->srf_head);
		view->committed = false;
		res->id = -1;
	}
	FUNC3(&dev_priv->binding_mutex);
}