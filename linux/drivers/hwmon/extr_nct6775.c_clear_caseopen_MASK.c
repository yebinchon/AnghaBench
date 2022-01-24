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
typedef  int /*<<< orphan*/  u8 ;
struct nct6775_data {int valid; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  sioreg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int INTRUSION_ALARM_BASE ; 
 int /*<<< orphan*/ * NCT6775_CR_CASEOPEN_CLR_MASK ; 
 int /*<<< orphan*/  NCT6775_LD_ACPI ; 
 int /*<<< orphan*/ * NCT6775_REG_CR_CASEOPEN_CLR ; 
 struct nct6775_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC10(struct device *dev, struct device_attribute *attr,
	       const char *buf, size_t count)
{
	struct nct6775_data *data = FUNC0(dev);
	int nr = FUNC9(attr)->index - INTRUSION_ALARM_BASE;
	unsigned long val;
	u8 reg;
	int ret;

	if (FUNC1(buf, 10, &val) || val != 0)
		return -EINVAL;

	FUNC2(&data->update_lock);

	/*
	 * Use CR registers to clear caseopen status.
	 * The CR registers are the same for all chips, and not all chips
	 * support clearing the caseopen status through "regular" registers.
	 */
	ret = FUNC4(data->sioreg);
	if (ret) {
		count = ret;
		goto error;
	}

	FUNC8(data->sioreg, NCT6775_LD_ACPI);
	reg = FUNC6(data->sioreg, NCT6775_REG_CR_CASEOPEN_CLR[nr]);
	reg |= NCT6775_CR_CASEOPEN_CLR_MASK[nr];
	FUNC7(data->sioreg, NCT6775_REG_CR_CASEOPEN_CLR[nr], reg);
	reg &= ~NCT6775_CR_CASEOPEN_CLR_MASK[nr];
	FUNC7(data->sioreg, NCT6775_REG_CR_CASEOPEN_CLR[nr], reg);
	FUNC5(data->sioreg);

	data->valid = false;	/* Force cache refresh */
error:
	FUNC3(&data->update_lock);
	return count;
}