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
typedef  scalar_t__ u64 ;
struct drm_mm_node {scalar_t__ size; unsigned long color; int /*<<< orphan*/  start; struct drm_mm* mm; } ;
struct drm_mm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_mm_node*) ; 
 scalar_t__ FUNC1 (struct drm_mm_node*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static bool FUNC3(struct drm_mm_node *node, struct drm_mm *mm,
			u64 size, u64 alignment, unsigned long color)
{
	bool ok = true;

	if (!FUNC0(node) || node->mm != mm) {
		FUNC2("node not allocated\n");
		ok = false;
	}

	if (node->size != size) {
		FUNC2("node has wrong size, found %llu, expected %llu\n",
		       node->size, size);
		ok = false;
	}

	if (FUNC1(node, alignment)) {
		FUNC2("node is misaligned, start %llx rem %llu, expected alignment %llu\n",
		       node->start, FUNC1(node, alignment), alignment);
		ok = false;
	}

	if (node->color != color) {
		FUNC2("node has wrong color, found %lu, expected %lu\n",
		       node->color, color);
		ok = false;
	}

	return ok;
}