#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u32 ;
struct TYPE_2__ {unsigned long num_wb; int /*<<< orphan*/  used; } ;
struct amdgpu_device {TYPE_1__ wb; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

int FUNC2(struct amdgpu_device *adev, u32 *wb)
{
	unsigned long offset = FUNC1(adev->wb.used, adev->wb.num_wb);

	if (offset < adev->wb.num_wb) {
		FUNC0(offset, adev->wb.used);
		*wb = offset << 3; /* convert to dw offset */
		return 0;
	} else {
		return -EINVAL;
	}
}