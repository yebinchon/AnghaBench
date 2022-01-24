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
struct dma_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (struct dma_device*) ; 
 int /*<<< orphan*/  dmam_device_release ; 

int FUNC4(struct dma_device *device)
{
	void *p;
	int ret;

	p = FUNC1(dmam_device_release, sizeof(void *), GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	ret = FUNC3(device);
	if (!ret) {
		*(struct dma_device **)p = device;
		FUNC0(device->dev, p);
	} else {
		FUNC2(p);
	}

	return ret;
}