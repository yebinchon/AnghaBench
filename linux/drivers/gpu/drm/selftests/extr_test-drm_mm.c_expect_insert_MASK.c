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
typedef  int /*<<< orphan*/  u64 ;
struct insert_mode {int /*<<< orphan*/  name; int /*<<< orphan*/  mode; } ;
struct drm_mm_node {int dummy; } ;
struct drm_mm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_mm_node*,struct drm_mm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC1 (struct drm_mm*,struct drm_mm_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC4(struct drm_mm *mm, struct drm_mm_node *node,
			  u64 size, u64 alignment, unsigned long color,
			  const struct insert_mode *mode)
{
	int err;

	err = FUNC1(mm, node,
					 size, alignment, color,
					 mode->mode);
	if (err) {
		FUNC3("insert (size=%llu, alignment=%llu, color=%lu, mode=%s) failed with err=%d\n",
		       size, alignment, color, mode->name, err);
		return false;
	}

	if (!FUNC0(node, mm, size, alignment, color)) {
		FUNC2(node);
		return false;
	}

	return true;
}