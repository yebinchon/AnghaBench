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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  SRBM_GFX_CNTL ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev,
			    u32 me, u32 pipe, u32 queue, u32 vmid)
{
	u32 srbm_gfx_cntl = (FUNC1(pipe & 0x3) |
			     FUNC0(me & 0x3) |
			     FUNC3(vmid & 0xf) |
			     FUNC2(queue & 0x7));
	FUNC4(SRBM_GFX_CNTL, srbm_gfx_cntl);
}