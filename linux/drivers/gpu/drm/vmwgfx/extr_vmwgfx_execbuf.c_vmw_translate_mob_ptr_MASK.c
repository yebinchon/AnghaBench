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
typedef  int /*<<< orphan*/  uint32_t ;
struct vmw_sw_context {int /*<<< orphan*/  bo_relocations; int /*<<< orphan*/  ctx; TYPE_1__* fp; } ;
struct vmw_relocation {int /*<<< orphan*/  head; struct vmw_buffer_object* vbo; int /*<<< orphan*/ * mob_loc; } ;
struct vmw_private {int dummy; } ;
struct vmw_buffer_object {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfile; } ;
typedef  int /*<<< orphan*/  SVGAMobId ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct vmw_buffer_object*) ; 
 int FUNC1 (struct vmw_buffer_object*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 struct vmw_buffer_object* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,struct vmw_buffer_object*,int,int) ; 
 struct vmw_relocation* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct vmw_private *dev_priv,
				 struct vmw_sw_context *sw_context,
				 SVGAMobId *id,
				 struct vmw_buffer_object **vmw_bo_p)
{
	struct vmw_buffer_object *vmw_bo;
	uint32_t handle = *id;
	struct vmw_relocation *reloc;
	int ret;

	FUNC9(sw_context->ctx);
	vmw_bo = FUNC5(sw_context->fp->tfile, handle);
	if (FUNC0(vmw_bo)) {
		FUNC2("Could not find or use MOB buffer.\n");
		return FUNC1(vmw_bo);
	}

	ret = FUNC7(sw_context->ctx, vmw_bo, true, false);
	FUNC6();
	if (FUNC4(ret != 0))
		return ret;

	reloc = FUNC8(sw_context->ctx, sizeof(*reloc));
	if (!reloc)
		return -ENOMEM;

	reloc->mob_loc = id;
	reloc->vbo = vmw_bo;

	*vmw_bo_p = vmw_bo;
	FUNC3(&reloc->head, &sw_context->bo_relocations);

	return 0;
}