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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_PG_DISABLE ; 
 int /*<<< orphan*/  RLC_PG_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct amdgpu_device *adev, bool enable)
{
	FUNC0(RLC_PG_CNTL, CP_PG_DISABLE, enable ? 0 : 1);
}