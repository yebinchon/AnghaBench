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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSYSHUB_DATA ; 
 int /*<<< orphan*/  mmSYSHUB_INDEX ; 

__attribute__((used)) static void FUNC1(struct amdgpu_device *adev, uint32_t offset,
				       uint32_t data)
{
	FUNC0(NBIO, 0, mmSYSHUB_INDEX, offset);
	FUNC0(NBIO, 0, mmSYSHUB_DATA, data);
}