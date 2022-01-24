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
typedef  scalar_t__ uint32_t ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SQIND_WAVE_SGPRS_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static void FUNC1(struct amdgpu_device *adev, uint32_t simd,
				     uint32_t wave, uint32_t start,
				     uint32_t size, uint32_t *dst)
{
	FUNC0(
		adev, simd, wave, 0,
		start + SQIND_WAVE_SGPRS_OFFSET, size, dst);
}