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
typedef  int u64 ;
struct iommu_cmd {int* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_COMPL_WAIT ; 
 int CMD_COMPL_WAIT_STORE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct iommu_cmd *cmd, u64 address)
{
	u64 paddr = FUNC2((void *)address);

	FUNC1(address & 0x7ULL);

	FUNC4(cmd, 0, sizeof(*cmd));
	cmd->data[0] = FUNC3(paddr) | CMD_COMPL_WAIT_STORE_MASK;
	cmd->data[1] = FUNC5(paddr);
	cmd->data[2] = 1;
	FUNC0(cmd, CMD_COMPL_WAIT);
}