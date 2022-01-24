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
struct radeon_device {int /*<<< orphan*/  end_idx_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int FUNC1 (int) ; 
 int AZ_ENDPOINT_REG_WRITE_EN ; 
 int AZ_F0_CODEC_ENDPOINT_DATA ; 
 int AZ_F0_CODEC_ENDPOINT_INDEX ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct radeon_device *rdev,
			       u32 block_offset, u32 reg, u32 v)
{
	unsigned long flags;

	FUNC3(&rdev->end_idx_lock, flags);
	if (FUNC0(rdev))
		FUNC2(AZ_F0_CODEC_ENDPOINT_INDEX + block_offset, reg);
	else
		FUNC2(AZ_F0_CODEC_ENDPOINT_INDEX + block_offset,
		       AZ_ENDPOINT_REG_WRITE_EN | FUNC1(reg));
	FUNC2(AZ_F0_CODEC_ENDPOINT_DATA + block_offset, v);
	FUNC4(&rdev->end_idx_lock, flags);
}