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
struct dss_device {int /*<<< orphan*/ * dispc_ops; int /*<<< orphan*/ * dispc; } ;
struct dispc_device {int /*<<< orphan*/  debugfs; struct dss_device* dss; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct dispc_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev, struct device *master, void *data)
{
	struct dispc_device *dispc = FUNC0(dev);
	struct dss_device *dss = dispc->dss;

	FUNC2(dispc->debugfs);

	dss->dispc = NULL;
	dss->dispc_ops = NULL;

	FUNC4(dev);

	FUNC1(dispc);

	FUNC3(dispc);
}