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
 int /*<<< orphan*/  CONFIG_DRM_SUN8I_TCON_TOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC1 (struct device_node*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  sun8i_tcon_top_of_table ; 

__attribute__((used)) static bool FUNC4(struct device_node *node)
{
	struct device_node *remote;
	bool ret = false;

	remote = FUNC1(node, 0, -1);
	if (remote) {
		ret = !!(FUNC0(CONFIG_DRM_SUN8I_TCON_TOP) &&
			 FUNC2(sun8i_tcon_top_of_table, remote));
		FUNC3(remote);
	}

	return ret;
}