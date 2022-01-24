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
typedef  size_t u8 ;
struct etmv4_config {size_t ctxid_idx; scalar_t__* ctxid_pid; } ;
struct etmv4_drvdata {int /*<<< orphan*/  spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  current ; 
 struct etmv4_drvdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_pid_ns ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			      struct device_attribute *attr,
			      char *buf)
{
	u8 idx;
	unsigned long val;
	struct etmv4_drvdata *drvdata = FUNC0(dev->parent);
	struct etmv4_config *config = &drvdata->config;

	/*
	 * Don't use contextID tracing if coming from a PID namespace.  See
	 * comment in ctxid_pid_store().
	 */
	if (FUNC4(current) != &init_pid_ns)
		return -EINVAL;

	FUNC2(&drvdata->spinlock);
	idx = config->ctxid_idx;
	val = (unsigned long)config->ctxid_pid[idx];
	FUNC3(&drvdata->spinlock);
	return FUNC1(buf, PAGE_SIZE, "%#lx\n", val);
}