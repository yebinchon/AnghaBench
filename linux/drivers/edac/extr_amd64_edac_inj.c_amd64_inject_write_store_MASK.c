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
typedef  int u32 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  section; } ;
struct amd64_pvt {int /*<<< orphan*/  F3; TYPE_1__ injection; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  F10_NB_ARRAY_ADDR ; 
 int /*<<< orphan*/  F10_NB_ARRAY_DATA ; 
 int F10_NB_ARRAY_DRAM ; 
 int F10_NB_ARR_ECC_WR_REQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  disable_caches ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  enable_caches ; 
 int FUNC6 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct mem_ctl_info* FUNC9 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
					struct device_attribute *mattr,
					const char *data, size_t count)
{
	struct mem_ctl_info *mci = FUNC9(dev);
	struct amd64_pvt *pvt = mci->pvt_info;
	u32 section, word_bits, tmp;
	unsigned long value;
	int ret;

	ret = FUNC6(data, 10, &value);
	if (ret < 0)
		return ret;

	/* Form value to choose 16-byte section of cacheline */
	section = F10_NB_ARRAY_DRAM | FUNC0(pvt->injection.section);

	FUNC3(pvt->F3, F10_NB_ARRAY_ADDR, section);

	word_bits = FUNC1(pvt->injection);

	FUNC8("Don't forget to decrease MCE polling interval in\n"
			"/sys/bus/machinecheck/devices/machinecheck<CPUNUM>/check_interval\n"
			"so that you can get the error report faster.\n");

	FUNC7(disable_caches, NULL, 1);

	/* Issue 'word' and 'bit' along with the READ request */
	FUNC3(pvt->F3, F10_NB_ARRAY_DATA, word_bits);

 retry:
	/* wait until injection happens */
	FUNC2(pvt->F3, F10_NB_ARRAY_DATA, &tmp);
	if (tmp & F10_NB_ARR_ECC_WR_REQ) {
		FUNC4();
		goto retry;
	}

	FUNC7(enable_caches, NULL, 1);

	FUNC5(0, "section=0x%x word_bits=0x%x\n", section, word_bits);

	return count;
}