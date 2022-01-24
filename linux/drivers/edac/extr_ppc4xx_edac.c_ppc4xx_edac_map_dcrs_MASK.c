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
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  dcr_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 unsigned int SDRAM_DCR_RESOURCE_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct device_node const*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct device_node const*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct device_node const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC5(const struct device_node *np,
				dcr_host_t *dcr_host)
{
	unsigned int dcr_base, dcr_len;

	if (np == NULL || dcr_host == NULL)
		return -EINVAL;

	/* Get the DCR resource extent and sanity check the values. */

	dcr_base = FUNC3(np, 0);
	dcr_len = FUNC2(np, 0);

	if (dcr_base == 0 || dcr_len == 0) {
		FUNC4(KERN_ERR,
				   "Failed to obtain DCR property.\n");
		return -ENODEV;
	}

	if (dcr_len != SDRAM_DCR_RESOURCE_LEN) {
		FUNC4(KERN_ERR,
				   "Unexpected DCR length %d, expected %d.\n",
				   dcr_len, SDRAM_DCR_RESOURCE_LEN);
		return -ENODEV;
	}

	/*  Attempt to map the DCR extent. */

	*dcr_host = FUNC1(np, dcr_base, dcr_len);

	if (!FUNC0(*dcr_host)) {
		FUNC4(KERN_INFO, "Failed to map DCRs.\n");
		    return -ENODEV;
	}

	return 0;
}