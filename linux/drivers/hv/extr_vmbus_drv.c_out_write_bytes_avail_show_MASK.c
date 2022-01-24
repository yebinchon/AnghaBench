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
struct hv_ring_buffer_debug_info {int bytes_avail_towrite; } ;
struct hv_device {TYPE_1__* channel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  outbound; } ;

/* Variables and functions */
 int ENODEV ; 
 struct hv_device* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hv_ring_buffer_debug_info*) ; 
 int FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					  struct device_attribute *dev_attr,
					  char *buf)
{
	struct hv_device *hv_dev = FUNC0(dev);
	struct hv_ring_buffer_debug_info outbound;
	int ret;

	if (!hv_dev->channel)
		return -ENODEV;

	ret = FUNC1(&hv_dev->channel->outbound,
					  &outbound);
	if (ret < 0)
		return ret;
	return FUNC2(buf, "%d\n", outbound.bytes_avail_towrite);
}