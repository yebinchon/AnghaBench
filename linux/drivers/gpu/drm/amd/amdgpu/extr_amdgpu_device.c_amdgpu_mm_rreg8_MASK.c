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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct amdgpu_device {scalar_t__ rmmio_size; scalar_t__ rmmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

uint8_t FUNC2(struct amdgpu_device *adev, uint32_t offset) {
	if (offset < adev->rmmio_size)
		return (FUNC1(adev->rmmio + offset));
	FUNC0();
}