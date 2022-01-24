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
struct iommu_cmd {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 struct iommu_cmd* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned long phys_addr)
{
	struct iommu_cmd *cmd = FUNC0(phys_addr);
	int i;

	for (i = 0; i < 4; ++i)
		FUNC1("CMD[%d]: %08x\n", i, cmd->data[i]);
}