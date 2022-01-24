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
struct iommu_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INV_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct iommu_cmd *cmd)
{
	FUNC1(cmd, 0, sizeof(*cmd));
	FUNC0(cmd, CMD_INV_ALL);
}