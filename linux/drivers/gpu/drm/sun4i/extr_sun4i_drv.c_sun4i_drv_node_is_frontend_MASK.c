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
 scalar_t__ FUNC0 (struct device_node*,char*) ; 

__attribute__((used)) static bool FUNC1(struct device_node *node)
{
	return FUNC0(node, "allwinner,sun4i-a10-display-frontend") ||
		FUNC0(node, "allwinner,sun5i-a13-display-frontend") ||
		FUNC0(node, "allwinner,sun6i-a31-display-frontend") ||
		FUNC0(node, "allwinner,sun7i-a20-display-frontend") ||
		FUNC0(node, "allwinner,sun8i-a23-display-frontend") ||
		FUNC0(node, "allwinner,sun8i-a33-display-frontend") ||
		FUNC0(node, "allwinner,sun9i-a80-display-frontend");
}