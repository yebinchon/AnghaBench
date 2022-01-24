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
struct dw_i2c_dev {int shared_with_punit; int /*<<< orphan*/  release_lock; int /*<<< orphan*/  acquire_lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  iosf_mbi_block_punit_i2c_access ; 
 int /*<<< orphan*/  iosf_mbi_unblock_punit_i2c_access ; 

int FUNC5(struct dw_i2c_dev *dev)
{
	acpi_status status;
	unsigned long long shared_host = 0;
	acpi_handle handle;

	if (!dev || !dev->dev)
		return 0;

	handle = FUNC1(dev->dev);
	if (!handle)
		return 0;

	status = FUNC2(handle, "_SEM", NULL, &shared_host);
	if (FUNC0(status))
		return 0;

	if (!shared_host)
		return 0;

	if (!FUNC4())
		return -EPROBE_DEFER;

	FUNC3(dev->dev, "I2C bus managed by PUNIT\n");
	dev->acquire_lock = iosf_mbi_block_punit_i2c_access;
	dev->release_lock = iosf_mbi_unblock_punit_i2c_access;
	dev->shared_with_punit = true;

	return 0;
}