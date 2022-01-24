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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct amd_iommu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct amd_iommu *iommu, u16 l1, u8 address, u32 val)
{
	FUNC0(iommu->dev, 0xf8, (address | l1 << 16 | 1 << 31));
	FUNC0(iommu->dev, 0xfc, val);
	FUNC0(iommu->dev, 0xf8, (address | l1 << 16));
}