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
struct device {int dummy; } ;
struct coreboot_device {int dummy; } ;

/* Variables and functions */
 struct coreboot_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct coreboot_device*) ; 

__attribute__((used)) static void FUNC2(struct device *dev)
{
	struct coreboot_device *device = FUNC0(dev);

	FUNC1(device);
}