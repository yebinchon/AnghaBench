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
struct drm_mm_node {int /*<<< orphan*/  hole_stack; int /*<<< orphan*/  rb_hole_addr; int /*<<< orphan*/  rb_hole_size; } ;
struct drm_mm {int /*<<< orphan*/  hole_stack; } ;
typedef  enum drm_mm_insert_mode { ____Placeholder_drm_mm_insert_mode } drm_mm_insert_mode ;

/* Variables and functions */
#define  DRM_MM_INSERT_BEST 131 
#define  DRM_MM_INSERT_EVICT 130 
#define  DRM_MM_INSERT_HIGH 129 
#define  DRM_MM_INSERT_LOW 128 
 int /*<<< orphan*/  hole_stack ; 
 struct drm_mm_node* FUNC0 (struct drm_mm_node*,int /*<<< orphan*/ ) ; 
 struct drm_mm_node* FUNC1 (int /*<<< orphan*/ ) ; 
 struct drm_mm_node* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct drm_mm_node *
FUNC5(struct drm_mm *mm,
	  struct drm_mm_node *node,
	  enum drm_mm_insert_mode mode)
{
	switch (mode) {
	default:
	case DRM_MM_INSERT_BEST:
		return FUNC2(FUNC4(&node->rb_hole_size));

	case DRM_MM_INSERT_LOW:
		return FUNC1(FUNC3(&node->rb_hole_addr));

	case DRM_MM_INSERT_HIGH:
		return FUNC1(FUNC4(&node->rb_hole_addr));

	case DRM_MM_INSERT_EVICT:
		node = FUNC0(node, hole_stack);
		return &node->hole_stack == &mm->hole_stack ? NULL : node;
	}
}