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
typedef  scalar_t__ u64 ;
struct etmv4_config {size_t ctxid_idx; scalar_t__* ctxid_pid; } ;
struct etmv4_drvdata {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  numcidc; int /*<<< orphan*/  ctxid_size; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  current ; 
 struct etmv4_drvdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_pid_ns ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			       struct device_attribute *attr,
			       const char *buf, size_t size)
{
	u8 idx;
	unsigned long pid;
	struct etmv4_drvdata *drvdata = FUNC0(dev->parent);
	struct etmv4_config *config = &drvdata->config;

	/*
	 * When contextID tracing is enabled the tracers will insert the
	 * value found in the contextID register in the trace stream.  But if
	 * a process is in a namespace the PID of that process as seen from the
	 * namespace won't be what the kernel sees, something that makes the
	 * feature confusing and can potentially leak kernel only information.
	 * As such refuse to use the feature if @current is not in the initial
	 * PID namespace.
	 */
	if (FUNC4(current) != &init_pid_ns)
		return -EINVAL;

	/*
	 * only implemented when ctxid tracing is enabled, i.e. at least one
	 * ctxid comparator is implemented and ctxid is greater than 0 bits
	 * in length
	 */
	if (!drvdata->ctxid_size || !drvdata->numcidc)
		return -EINVAL;
	if (FUNC1(buf, 16, &pid))
		return -EINVAL;

	FUNC2(&drvdata->spinlock);
	idx = config->ctxid_idx;
	config->ctxid_pid[idx] = (u64)pid;
	FUNC3(&drvdata->spinlock);
	return size;
}