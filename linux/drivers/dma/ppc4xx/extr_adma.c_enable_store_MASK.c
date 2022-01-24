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
struct device_driver {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DCRN_MQ0_XORBA ; 
 size_t EFAULT ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ppc440spe_mq_dcr_host ; 
 int ppc440spe_r6_enabled ; 
 int /*<<< orphan*/  ppc440spe_r6_tchan ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device_driver *dev, const char *buf,
			    size_t count)
{
	unsigned long val;

	if (!count || count > 11)
		return -EINVAL;

	if (!ppc440spe_r6_tchan)
		return -EFAULT;

	/* Write a key */
	FUNC4(buf, "%lx", &val);
	FUNC0(ppc440spe_mq_dcr_host, DCRN_MQ0_XORBA, val);
	FUNC1();

	/* Verify whether it really works now */
	if (FUNC2(ppc440spe_r6_tchan) == 0) {
		FUNC3("PPC440SP(e) RAID-6 has been activated "
			"successfully\n");
		ppc440spe_r6_enabled = 1;
	} else {
		FUNC3("PPC440SP(e) RAID-6 hasn't been activated!"
			" Error key ?\n");
		ppc440spe_r6_enabled = 0;
	}
	return count;
}