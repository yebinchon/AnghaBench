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
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DRM_SUN4I_BACKEND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  sun4i_frontend_of_table ; 

__attribute__((used)) static bool FUNC2(struct device_node *node)
{
	if (FUNC0(CONFIG_DRM_SUN4I_BACKEND))
		return !!FUNC1(sun4i_frontend_of_table, node);

	return false;
}