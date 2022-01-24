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
struct kobject {int dummy; } ;
struct edac_device_ctl_info {int /*<<< orphan*/  owner; int /*<<< orphan*/  dev_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct edac_device_ctl_info* FUNC3 (struct kobject*) ; 

__attribute__((used)) static void FUNC4(struct kobject *kobj)
{
	struct edac_device_ctl_info *edac_dev = FUNC3(kobj);

	FUNC0(4, "control index=%d\n", edac_dev->dev_idx);

	/* decrement the EDAC CORE module ref count */
	FUNC2(edac_dev->owner);

	/* free the control struct containing the 'main' kobj
	 * passed in to this routine
	 */
	FUNC1(edac_dev);
}