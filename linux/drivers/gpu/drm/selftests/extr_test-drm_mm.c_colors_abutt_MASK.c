#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_mm_node {int /*<<< orphan*/  size; int /*<<< orphan*/  start; int /*<<< orphan*/  color; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  start; int /*<<< orphan*/  color; scalar_t__ allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_mm_node const*) ; 
 TYPE_1__* FUNC1 (struct drm_mm_node const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  node_list ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const struct drm_mm_node *node)
{
	if (!FUNC0(node) &&
	    FUNC1(node, node_list)->allocated) {
		FUNC2("colors abutt; %ld [%llx + %llx] is next to %ld [%llx + %llx]!\n",
		       node->color, node->start, node->size,
		       FUNC1(node, node_list)->color,
		       FUNC1(node, node_list)->start,
		       FUNC1(node, node_list)->size);
		return true;
	}

	return false;
}