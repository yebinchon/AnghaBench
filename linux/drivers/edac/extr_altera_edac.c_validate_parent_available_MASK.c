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
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 scalar_t__ FUNC1 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device_node *np)
{
	struct device_node *parent;
	int ret = 0;

	/* SDRAM must be present for Linux (implied parent) */
	if (FUNC1(np, "altr,sdram-edac-s10"))
		return 0;

	/* Ensure parent device is enabled if parent node exists */
	parent = FUNC3(np, "altr,ecc-parent", 0);
	if (parent && !FUNC0(parent))
		ret = -ENODEV;

	FUNC2(parent);
	return ret;
}