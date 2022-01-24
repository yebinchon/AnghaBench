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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int pg_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_PG ; 
 int /*<<< orphan*/  PG_CNTL_ENABLE ; 
 int RADEON_PG_SUPPORT_SDMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev, bool enable)
{
	u32 data, orig;

	orig = data = FUNC0(DMA_PG);
	if (enable && (rdev->pg_flags & RADEON_PG_SUPPORT_SDMA))
		data |= PG_CNTL_ENABLE;
	else
		data &= ~PG_CNTL_ENABLE;
	if (orig != data)
		FUNC1(DMA_PG, data);
}