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
struct sec_queue {TYPE_1__* dev_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct sec_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct sec_queue*) ; 

int FUNC3(struct sec_queue *queue)
{
	struct device *dev = queue->dev_info->dev;
	int ret;

	FUNC2(queue);

	ret = FUNC1(queue);
	if (ret)
		FUNC0(dev, "Releasing queue failed %d\n", ret);

	return ret;
}