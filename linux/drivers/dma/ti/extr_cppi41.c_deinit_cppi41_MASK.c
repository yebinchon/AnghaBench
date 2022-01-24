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
struct device {int dummy; } ;
struct cppi41_dd {int /*<<< orphan*/  scratch_phys; int /*<<< orphan*/  qmgr_scratch; scalar_t__ qmgr_mem; } ;

/* Variables and functions */
 scalar_t__ QMGR_LRAM0_BASE ; 
 int /*<<< orphan*/  QMGR_SCRATCH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cppi41_dd*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct cppi41_dd*) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct cppi41_dd *cdd)
{
	FUNC1(cdd);

	FUNC3(dev, cdd);

	FUNC0(0, cdd->qmgr_mem + QMGR_LRAM0_BASE);
	FUNC0(0, cdd->qmgr_mem + QMGR_LRAM0_BASE);
	FUNC2(dev, QMGR_SCRATCH_SIZE, cdd->qmgr_scratch,
			cdd->scratch_phys);
}