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
struct vmw_ctx_binding_state {int /*<<< orphan*/  list; } ;
struct vmw_ctx_bindinfo {size_t bt; int scrubbed; int /*<<< orphan*/  res_list; int /*<<< orphan*/  ctx_list; int /*<<< orphan*/ * ctx; } ;
struct vmw_binding_info {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_ctx_bindinfo*,struct vmw_ctx_bindinfo const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_ctx_bindinfo*) ; 
 struct vmw_binding_info* vmw_binding_infos ; 
 struct vmw_ctx_bindinfo* FUNC4 (struct vmw_ctx_binding_state*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct vmw_ctx_binding_state *cbs,
		    const struct vmw_ctx_bindinfo *bi,
		    u32 shader_slot, u32 slot)
{
	struct vmw_ctx_bindinfo *loc =
		FUNC4(cbs, bi->bt, shader_slot, slot);
	const struct vmw_binding_info *b = &vmw_binding_infos[bi->bt];

	if (loc->ctx != NULL)
		FUNC3(loc);

	FUNC2(loc, bi, b->size);
	loc->scrubbed = false;
	FUNC1(&loc->ctx_list, &cbs->list);
	FUNC0(&loc->res_list);
}