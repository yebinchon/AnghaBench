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
struct coreboot_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ro_vpd ; 
 int /*<<< orphan*/  rw_vpd ; 
 int /*<<< orphan*/  vpd_kobj ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct coreboot_device *dev)
{
	FUNC1(&ro_vpd);
	FUNC1(&rw_vpd);

	FUNC0(vpd_kobj);

	return 0;
}