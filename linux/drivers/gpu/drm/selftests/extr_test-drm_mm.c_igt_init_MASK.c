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
typedef  int /*<<< orphan*/  tmp ;
struct drm_mm_node {unsigned int size; scalar_t__ start; } ;
struct drm_mm {unsigned int size; scalar_t__ start; } ;
typedef  int /*<<< orphan*/  mm ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_mm_node*,int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_mm_node*,int /*<<< orphan*/ ,unsigned int const) ; 
 scalar_t__ FUNC4 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_mm_node*) ; 
 int FUNC6 (struct drm_mm_node*,struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_mm_node*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_mm_node*) ; 

__attribute__((used)) static int FUNC11(void *ignored)
{
	const unsigned int size = 4096;
	struct drm_mm mm;
	struct drm_mm_node tmp;
	int ret = -EINVAL;

	/* Start with some simple checks on initialising the struct drm_mm */
	FUNC8(&mm, 0, sizeof(mm));
	if (FUNC4(&mm)) {
		FUNC9("zeroed mm claims to be initialized\n");
		return ret;
	}

	FUNC8(&mm, 0xff, sizeof(mm));
	FUNC3(&mm, 0, size);
	if (!FUNC4(&mm)) {
		FUNC9("mm claims not to be initialized\n");
		goto out;
	}

	if (!FUNC2(&mm)) {
		FUNC9("mm not empty on creation\n");
		goto out;
	}

	/* After creation, it should all be one massive hole */
	if (!FUNC1(&mm, 0, size)) {
		ret = -EINVAL;
		goto out;
	}

	FUNC8(&tmp, 0, sizeof(tmp));
	tmp.start = 0;
	tmp.size = size;
	ret = FUNC6(&mm, &tmp);
	if (ret) {
		FUNC9("failed to reserve whole drm_mm\n");
		goto out;
	}

	/* After filling the range entirely, there should be no holes */
	if (!FUNC0(&mm)) {
		ret = -EINVAL;
		goto out;
	}

	/* And then after emptying it again, the massive hole should be back */
	FUNC5(&tmp);
	if (!FUNC1(&mm, 0, size)) {
		ret = -EINVAL;
		goto out;
	}

out:
	if (ret)
		FUNC10(&mm);
	FUNC7(&mm);
	return ret;
}