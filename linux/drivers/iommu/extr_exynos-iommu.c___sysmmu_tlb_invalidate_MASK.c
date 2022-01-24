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
struct sysmmu_drvdata {scalar_t__ sfrbase; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG_MMU_FLUSH ; 
 scalar_t__ REG_V5_MMU_FLUSH_ALL ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct sysmmu_drvdata *data)
{
	if (FUNC0(data->version) < 5)
		FUNC1(0x1, data->sfrbase + REG_MMU_FLUSH);
	else
		FUNC1(0x1, data->sfrbase + REG_V5_MMU_FLUSH_ALL);
}