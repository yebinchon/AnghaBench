#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_vgpu {TYPE_2__* gvt; } ;
struct TYPE_3__ {unsigned int cfg_space_size; } ;
struct TYPE_4__ {TYPE_1__ device_info; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC2 (struct intel_vgpu*) ; 

int FUNC3(struct intel_vgpu *vgpu, unsigned int offset,
	void *p_data, unsigned int bytes)
{
	if (FUNC0(bytes > 4))
		return -EINVAL;

	if (FUNC0(offset + bytes > vgpu->gvt->device_info.cfg_space_size))
		return -EINVAL;

	FUNC1(p_data, FUNC2(vgpu) + offset, bytes);
	return 0;
}