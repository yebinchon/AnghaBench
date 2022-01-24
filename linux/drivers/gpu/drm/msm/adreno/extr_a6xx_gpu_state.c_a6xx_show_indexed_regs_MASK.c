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
struct drm_printer {int dummy; } ;
struct a6xx_indexed_registers {int count; int /*<<< orphan*/  name; } ;
struct a6xx_gpu_state_obj {int /*<<< orphan*/  data; struct a6xx_indexed_registers* handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_printer*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_printer*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct a6xx_gpu_state_obj *obj,
		struct drm_printer *p)
{
	const struct a6xx_indexed_registers *indexed = obj->handle;

	if (!indexed)
		return;

	FUNC2(p, "  - regs-name: ", indexed->name);
	FUNC0(p, "    dwords: %d\n", indexed->count);

	FUNC1(p, indexed->count << 2, obj->data);
}