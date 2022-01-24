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
typedef  unsigned long long u8 ;
typedef  unsigned long long u64 ;
struct amd_iommu {scalar_t__ mmio_base; } ;

/* Variables and functions */
 scalar_t__ MMIO_CONTROL_OFFSET ; 
 unsigned long long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct amd_iommu *iommu, u8 bit)
{
	u64 ctrl;

	ctrl = FUNC0(iommu->mmio_base + MMIO_CONTROL_OFFSET);
	ctrl &= ~(1ULL << bit);
	FUNC1(ctrl, iommu->mmio_base + MMIO_CONTROL_OFFSET);
}