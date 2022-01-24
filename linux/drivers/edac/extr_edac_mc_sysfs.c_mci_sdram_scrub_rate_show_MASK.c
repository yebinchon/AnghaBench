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
struct mem_ctl_info {int (* get_sdram_scrub_rate ) (struct mem_ctl_info*) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_MC ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char*,char*,int) ; 
 int FUNC2 (struct mem_ctl_info*) ; 
 struct mem_ctl_info* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					 struct device_attribute *mattr,
					 char *data)
{
	struct mem_ctl_info *mci = FUNC3(dev);
	int bandwidth = 0;

	bandwidth = mci->get_sdram_scrub_rate(mci);
	if (bandwidth < 0) {
		FUNC0(KERN_DEBUG, EDAC_MC, "Error reading scrub rate\n");
		return bandwidth;
	}

	return FUNC1(data, "%d\n", bandwidth);
}