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
struct a6xx_shader_block {int size; int /*<<< orphan*/  name; } ;
struct a6xx_gpu_state_obj {scalar_t__ data; struct a6xx_shader_block* handle; } ;

/* Variables and functions */
 int A6XX_NUM_SHADER_BANKS ; 
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_printer*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_printer*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct a6xx_gpu_state_obj *obj,
		struct drm_printer *p)
{
	const struct a6xx_shader_block *block = obj->handle;
	int i;

	if (!obj->handle)
		return;

	FUNC2(p, "  - type: ", block->name);

	for (i = 0; i < A6XX_NUM_SHADER_BANKS; i++) {
		FUNC0(p, "    - bank: %d\n", i);
		FUNC0(p, "      size: %d\n", block->size);

		if (!obj->data)
			continue;

		FUNC1(p, block->size << 2,
			obj->data + (block->size * i));
	}
}