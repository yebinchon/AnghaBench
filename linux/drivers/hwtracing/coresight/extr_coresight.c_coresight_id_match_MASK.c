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
struct device {int dummy; } ;
struct coresight_device {scalar_t__ type; int /*<<< orphan*/  enable; } ;
struct TYPE_2__ {int (* trace_id ) (struct coresight_device*) ;} ;

/* Variables and functions */
 scalar_t__ CORESIGHT_DEV_TYPE_SOURCE ; 
 TYPE_1__* FUNC0 (struct coresight_device*) ; 
 int FUNC1 (struct coresight_device*) ; 
 int FUNC2 (struct coresight_device*) ; 
 struct coresight_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	int trace_id, i_trace_id;
	struct coresight_device *csdev, *i_csdev;

	csdev = data;
	i_csdev = FUNC3(dev);

	/*
	 * No need to care about oneself and components that are not
	 * sources or not enabled
	 */
	if (i_csdev == csdev || !i_csdev->enable ||
	    i_csdev->type != CORESIGHT_DEV_TYPE_SOURCE)
		return 0;

	/* Get the source ID for both compoment */
	trace_id = FUNC0(csdev)->trace_id(csdev);
	i_trace_id = FUNC0(i_csdev)->trace_id(i_csdev);

	/* All you need is one */
	if (trace_id == i_trace_id)
		return 1;

	return 0;
}