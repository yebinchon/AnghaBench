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
struct mem_ctl_info {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct mem_ctl_info* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  mem_ctls_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct mem_ctl_info *FUNC3(struct device *dev)
{
	struct mem_ctl_info *ret;

	FUNC1(&mem_ctls_mutex);
	ret = FUNC0(dev);
	FUNC2(&mem_ctls_mutex);

	return ret;
}