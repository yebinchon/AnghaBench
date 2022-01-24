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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VGA_VSTATUS_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmVGA_RENDER_CONTROL ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev,
					  bool render)
{
	if (!render)
		FUNC1(mmVGA_RENDER_CONTROL,
			FUNC0(mmVGA_RENDER_CONTROL) & VGA_VSTATUS_CNTL);

}