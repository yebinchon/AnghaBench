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
struct drm_printer {int dummy; } ;
struct a6xx_debugbus_block {int count; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_printer*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_printer*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct a6xx_debugbus_block *block,
		u32 *data, struct drm_printer *p)
{
	if (block) {
		FUNC2(p, "  - debugbus-block: ", block->name);

		/*
		 * count for regular debugbus data is in quadwords,
		 * but print the size in dwords for consistency
		 */
		FUNC0(p, "    count: %d\n", block->count << 1);

		FUNC1(p, block->count << 3, data);
	}
}