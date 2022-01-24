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
struct drm_mm_node {int start; int size; } ;
struct drm_mm {int dummy; } ;
typedef  int /*<<< orphan*/  rsvd_lo ;
typedef  int /*<<< orphan*/  rsvd_hi ;
typedef  int /*<<< orphan*/  node ;

/* Variables and functions */
 unsigned int DRM_MM_INSERT_ONCE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_mm*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct drm_mm*,struct drm_mm_node*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_mm_node*) ; 
 int FUNC4 (struct drm_mm*,struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_mm*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_mm_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int FUNC8(unsigned int mode)
{
	struct drm_mm mm;
	struct drm_mm_node rsvd_lo, rsvd_hi, node;
	int err;

	FUNC1(&mm, 0, 7);

	FUNC6(&rsvd_lo, 0, sizeof(rsvd_lo));
	rsvd_lo.start = 1;
	rsvd_lo.size = 1;
	err = FUNC4(&mm, &rsvd_lo);
	if (err) {
		FUNC7("Could not reserve low node\n");
		goto err;
	}

	FUNC6(&rsvd_hi, 0, sizeof(rsvd_hi));
	rsvd_hi.start = 5;
	rsvd_hi.size = 1;
	err = FUNC4(&mm, &rsvd_hi);
	if (err) {
		FUNC7("Could not reserve low node\n");
		goto err_lo;
	}

	if (!FUNC0(&rsvd_lo) || !FUNC0(&rsvd_hi)) {
		FUNC7("Expected a hole after lo and high nodes!\n");
		err = -EINVAL;
		goto err_hi;
	}

	FUNC6(&node, 0, sizeof(node));
	err = FUNC2(&mm, &node,
					 2, 0, 0,
					 mode | DRM_MM_INSERT_ONCE);
	if (!err) {
		FUNC7("Unexpectedly inserted the node into the wrong hole: node.start=%llx\n",
		       node.start);
		err = -EINVAL;
		goto err_node;
	}

	err = FUNC2(&mm, &node, 2, 0, 0, mode);
	if (err) {
		FUNC7("Could not insert the node into the available hole!\n");
		err = -EINVAL;
		goto err_hi;
	}

err_node:
	FUNC3(&node);
err_hi:
	FUNC3(&rsvd_hi);
err_lo:
	FUNC3(&rsvd_lo);
err:
	FUNC5(&mm);
	return err;
}