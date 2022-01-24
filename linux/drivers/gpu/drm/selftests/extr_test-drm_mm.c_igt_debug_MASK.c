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
typedef  int /*<<< orphan*/  nodes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_mm*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct drm_mm*,struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_mm_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_mm*) ; 

__attribute__((used)) static int FUNC5(void *ignored)
{
	struct drm_mm mm;
	struct drm_mm_node nodes[2];
	int ret;

	/* Create a small drm_mm with a couple of nodes and a few holes, and
	 * check that the debug iterator doesn't explode over a trivial drm_mm.
	 */

	FUNC0(&mm, 0, 4096);

	FUNC2(nodes, 0, sizeof(nodes));
	nodes[0].start = 512;
	nodes[0].size = 1024;
	ret = FUNC1(&mm, &nodes[0]);
	if (ret) {
		FUNC3("failed to reserve node[0] {start=%lld, size=%lld)\n",
		       nodes[0].start, nodes[0].size);
		return ret;
	}

	nodes[1].size = 1024;
	nodes[1].start = 4096 - 512 - nodes[1].size;
	ret = FUNC1(&mm, &nodes[1]);
	if (ret) {
		FUNC3("failed to reserve node[1] {start=%lld, size=%lld)\n",
		       nodes[1].start, nodes[1].size);
		return ret;
	}

	FUNC4(&mm);
	return 0;
}