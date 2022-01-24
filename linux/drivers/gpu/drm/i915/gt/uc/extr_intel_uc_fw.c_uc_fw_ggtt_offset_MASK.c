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
struct intel_uc_fw {int dummy; } ;
struct drm_mm_node {scalar_t__ start; scalar_t__ size; int /*<<< orphan*/  allocated; } ;
struct i915_ggtt {struct drm_mm_node uc_fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static u32 FUNC3(struct intel_uc_fw *uc_fw, struct i915_ggtt *ggtt)
{
	struct drm_mm_node *node = &ggtt->uc_fw;

	FUNC0(!node->allocated);
	FUNC0(FUNC2(node->start));
	FUNC0(FUNC2(node->start + node->size - 1));

	return FUNC1(node->start);
}