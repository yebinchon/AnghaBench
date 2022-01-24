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
struct scpi_dvfs_info {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct scpi_dvfs_info* FUNC0 (int) ; 
 int FUNC1 (struct device*) ; 
 struct scpi_dvfs_info* FUNC2 (int) ; 

__attribute__((used)) static struct scpi_dvfs_info *FUNC3(struct device *dev)
{
	int domain = FUNC1(dev);

	if (domain < 0)
		return FUNC0(domain);

	return FUNC2(domain);
}