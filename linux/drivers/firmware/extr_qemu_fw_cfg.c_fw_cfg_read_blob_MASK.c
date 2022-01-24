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
typedef  unsigned int u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 scalar_t__ AE_NOT_CONFIGURED ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  fw_cfg_dev_lock ; 
 int /*<<< orphan*/  fw_cfg_reg_data ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC10(u16 key,
				void *buf, loff_t pos, size_t count)
{
	u32 glk = -1U;
	acpi_status status;

	/* If we have ACPI, ensure mutual exclusion against any potential
	 * device access by the firmware, e.g. via AML methods:
	 */
	status = FUNC2(ACPI_WAIT_FOREVER, &glk);
	if (FUNC0(status) && status != AE_NOT_CONFIGURED) {
		/* Should never get here */
		FUNC1(1, "fw_cfg_read_blob: Failed to lock ACPI!\n");
		FUNC7(buf, 0, count);
		return -EINVAL;
	}

	FUNC8(&fw_cfg_dev_lock);
	FUNC4(key);
	while (pos-- > 0)
		FUNC5(fw_cfg_reg_data);
	FUNC6(fw_cfg_reg_data, buf, count);
	FUNC9(&fw_cfg_dev_lock);

	FUNC3(glk);
	return count;
}