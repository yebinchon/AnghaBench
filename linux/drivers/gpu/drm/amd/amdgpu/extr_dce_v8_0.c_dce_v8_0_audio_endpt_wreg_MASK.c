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
typedef  scalar_t__ u32 ;
struct amdgpu_device {int /*<<< orphan*/  audio_endpt_idx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ mmAZALIA_F0_CODEC_ENDPOINT_DATA ; 
 scalar_t__ mmAZALIA_F0_CODEC_ENDPOINT_INDEX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev,
				      u32 block_offset, u32 reg, u32 v)
{
	unsigned long flags;

	FUNC1(&adev->audio_endpt_idx_lock, flags);
	FUNC0(mmAZALIA_F0_CODEC_ENDPOINT_INDEX + block_offset, reg);
	FUNC0(mmAZALIA_F0_CODEC_ENDPOINT_DATA + block_offset, v);
	FUNC2(&adev->audio_endpt_idx_lock, flags);
}