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
struct vmw_sw_context {int /*<<< orphan*/  res_relocations; int /*<<< orphan*/  ctx; } ;
struct vmw_resource_relocation {unsigned long offset; int rel_type; int /*<<< orphan*/  head; struct vmw_resource const* res; } ;
struct vmw_resource {int dummy; } ;
typedef  enum vmw_resource_relocation_type { ____Placeholder_vmw_resource_relocation_type } vmw_resource_relocation_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 struct vmw_resource_relocation* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct vmw_sw_context *sw_context,
				       const struct vmw_resource *res,
				       unsigned long offset,
				       enum vmw_resource_relocation_type
				       rel_type)
{
	struct vmw_resource_relocation *rel;

	rel = FUNC3(sw_context->ctx, sizeof(*rel));
	if (FUNC2(!rel)) {
		FUNC0("Failed to allocate a resource relocation.\n");
		return -ENOMEM;
	}

	rel->res = res;
	rel->offset = offset;
	rel->rel_type = rel_type;
	FUNC1(&rel->head, &sw_context->res_relocations);

	return 0;
}