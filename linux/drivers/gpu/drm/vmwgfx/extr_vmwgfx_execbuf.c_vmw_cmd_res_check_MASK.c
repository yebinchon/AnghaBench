#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct vmw_user_resource_conv {int dummy; } ;
struct vmw_sw_context {int /*<<< orphan*/  buf_start; TYPE_1__* fp; int /*<<< orphan*/  ctx; struct vmw_res_cache_entry* res_cache; } ;
struct vmw_resource {int dummy; } ;
struct vmw_res_cache_entry {int valid_handle; scalar_t__ handle; struct vmw_resource* res; scalar_t__ valid; int /*<<< orphan*/  private; } ;
struct vmw_private {int dummy; } ;
typedef  enum vmw_res_type { ____Placeholder_vmw_res_type } vmw_res_type ;
struct TYPE_2__ {int /*<<< orphan*/  tfile; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct vmw_resource*) ; 
 int FUNC1 (struct vmw_resource*) ; 
 scalar_t__ SVGA3D_INVALID_ID ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct vmw_sw_context*,struct vmw_resource*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct vmw_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int vmw_res_context ; 
 int /*<<< orphan*/  vmw_res_rel_normal ; 
 int FUNC8 (struct vmw_sw_context*,struct vmw_resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vmw_resource* FUNC9 (struct vmw_private*,int /*<<< orphan*/ ,scalar_t__,struct vmw_user_resource_conv const*) ; 
 int FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct vmw_private *dev_priv,
		  struct vmw_sw_context *sw_context,
		  enum vmw_res_type res_type,
		  u32 dirty,
		  const struct vmw_user_resource_conv *converter,
		  uint32_t *id_loc,
		  struct vmw_resource **p_res)
{
	struct vmw_res_cache_entry *rcache = &sw_context->res_cache[res_type];
	struct vmw_resource *res;
	int ret;

	if (p_res)
		*p_res = NULL;

	if (*id_loc == SVGA3D_INVALID_ID) {
		if (res_type == vmw_res_context) {
			FUNC2("Illegal context invalid id.\n");
			return -EINVAL;
		}
		return 0;
	}

	if (FUNC3(rcache->valid_handle && *id_loc == rcache->handle)) {
		res = rcache->res;
		if (dirty)
			FUNC11(sw_context->ctx,
						     rcache->private, dirty);
	} else {
		unsigned int size = FUNC6(dev_priv, res_type);

		ret = FUNC10(sw_context->ctx, size);
		if (ret)
			return ret;

		res = FUNC9
			(dev_priv, sw_context->fp->tfile, *id_loc, converter);
		if (FUNC0(res)) {
			FUNC2("Could not find/use resource 0x%08x.\n",
				       (unsigned int) *id_loc);
			return FUNC1(res);
		}

		ret = FUNC5(sw_context, res, dirty);
		if (FUNC4(ret != 0))
			return ret;

		if (rcache->valid && rcache->res == res) {
			rcache->valid_handle = true;
			rcache->handle = *id_loc;
		}
	}

	ret = FUNC8(sw_context, res,
					  FUNC7(sw_context->buf_start,
						       id_loc),
					  vmw_res_rel_normal);
	if (p_res)
		*p_res = res;

	return 0;
}