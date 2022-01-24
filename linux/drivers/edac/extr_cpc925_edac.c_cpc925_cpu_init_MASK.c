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
typedef  int u32 ;
struct cpc925_dev_info {scalar_t__ vbase; } ;

/* Variables and functions */
 int CPU_MASK_ENABLE ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 scalar_t__ REG_APIMASK_OFFSET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct cpc925_dev_info *dev_info)
{
	u32 apimask;
	u32 cpumask;

	apimask = FUNC0(dev_info->vbase + REG_APIMASK_OFFSET);

	cpumask = FUNC2();
	if (apimask & cpumask) {
		FUNC3(KERN_WARNING, "CPU(s) not present, "
				"but enabled in APIMASK, disabling\n");
		apimask &= ~cpumask;
	}

	if ((apimask & CPU_MASK_ENABLE) == 0)
		apimask |= CPU_MASK_ENABLE;

	FUNC1(apimask, dev_info->vbase + REG_APIMASK_OFFSET);
}