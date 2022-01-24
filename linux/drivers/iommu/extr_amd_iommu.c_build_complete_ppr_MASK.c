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
typedef  int u16 ;
struct iommu_cmd {int* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_COMPLETE_PPR ; 
 int CMD_INV_IOMMU_PAGES_GN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_cmd*,int /*<<< orphan*/ ) ; 
 int PPR_STATUS_MASK ; 
 int PPR_STATUS_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct iommu_cmd *cmd, u16 devid, int pasid,
			       int status, int tag, bool gn)
{
	FUNC1(cmd, 0, sizeof(*cmd));

	cmd->data[0]  = devid;
	if (gn) {
		cmd->data[1]  = pasid;
		cmd->data[2]  = CMD_INV_IOMMU_PAGES_GN_MASK;
	}
	cmd->data[3]  = tag & 0x1ff;
	cmd->data[3] |= (status & PPR_STATUS_MASK) << PPR_STATUS_SHIFT;

	FUNC0(cmd, CMD_COMPLETE_PPR);
}