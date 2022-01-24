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
struct device {int /*<<< orphan*/  parent; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct component_match**,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  dss_component_compare ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data)
{
	struct component_match **match = data;

	/*
	 * HACK
	 * We don't have a working driver for rfbi, so skip it here always.
	 * Otherwise dss will never get probed successfully, as it will wait
	 * for rfbi to get probed.
	 */
	if (FUNC2(FUNC1(dev), "rfbi"))
		return 0;

	FUNC0(dev->parent, match, dss_component_compare, dev);

	return 0;
}