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
struct fpga_image_info {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct fpga_image_info* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

struct fpga_image_info *FUNC3(struct device *dev)
{
	struct fpga_image_info *info;

	FUNC1(dev);

	info = FUNC0(dev, sizeof(*info), GFP_KERNEL);
	if (!info) {
		FUNC2(dev);
		return NULL;
	}

	info->dev = dev;

	return info;
}