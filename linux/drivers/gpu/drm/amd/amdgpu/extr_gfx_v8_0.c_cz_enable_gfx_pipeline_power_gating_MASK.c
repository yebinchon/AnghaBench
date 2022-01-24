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
 int /*<<< orphan*/  GFX_PIPELINE_PG_ENABLE ; 
 int /*<<< orphan*/  RLC_PG_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmDB_RENDER_CONTROL ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev,
						bool enable)
{
	FUNC1(RLC_PG_CNTL, GFX_PIPELINE_PG_ENABLE, enable ? 1 : 0);

	/* Read any GFX register to wake up GFX. */
	if (!enable)
		FUNC0(mmDB_RENDER_CONTROL);
}