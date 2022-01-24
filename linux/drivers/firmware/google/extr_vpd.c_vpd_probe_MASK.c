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
struct TYPE_2__ {int /*<<< orphan*/  cbmem_addr; } ;
struct coreboot_device {TYPE_1__ cbmem_ref; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  firmware_kobj ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vpd_kobj ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct coreboot_device *dev)
{
	int ret;

	vpd_kobj = FUNC0("vpd", firmware_kobj);
	if (!vpd_kobj)
		return -ENOMEM;

	ret = FUNC2(dev->cbmem_ref.cbmem_addr);
	if (ret) {
		FUNC1(vpd_kobj);
		return ret;
	}

	return 0;
}