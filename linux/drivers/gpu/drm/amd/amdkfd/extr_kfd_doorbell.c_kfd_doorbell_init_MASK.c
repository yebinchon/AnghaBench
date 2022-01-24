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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {uintptr_t doorbell_aperture_size; scalar_t__ doorbell_physical_address; int /*<<< orphan*/  doorbell_start_offset; } ;
struct kfd_dev {size_t doorbell_id_offset; uintptr_t doorbell_kernel_ptr; TYPE_1__ shared_resources; scalar_t__ doorbell_base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 uintptr_t FUNC0 (scalar_t__,size_t) ; 
 size_t FUNC1 (struct kfd_dev*) ; 
 size_t max_doorbell_slices ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 size_t FUNC3 (uintptr_t,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,size_t) ; 

int FUNC5(struct kfd_dev *kfd)
{
	size_t doorbell_start_offset;
	size_t doorbell_aperture_size;
	size_t doorbell_process_limit;

	/*
	 * We start with calculations in bytes because the input data might
	 * only be byte-aligned.
	 * Only after we have done the rounding can we assume any alignment.
	 */

	doorbell_start_offset =
			FUNC4(kfd->shared_resources.doorbell_start_offset,
					FUNC1(kfd));

	doorbell_aperture_size =
			FUNC3(kfd->shared_resources.doorbell_aperture_size,
					FUNC1(kfd));

	if (doorbell_aperture_size > doorbell_start_offset)
		doorbell_process_limit =
			(doorbell_aperture_size - doorbell_start_offset) /
						FUNC1(kfd);
	else
		return -ENOSPC;

	if (!max_doorbell_slices ||
	    doorbell_process_limit < max_doorbell_slices)
		max_doorbell_slices = doorbell_process_limit;

	kfd->doorbell_base = kfd->shared_resources.doorbell_physical_address +
				doorbell_start_offset;

	kfd->doorbell_id_offset = doorbell_start_offset / sizeof(u32);

	kfd->doorbell_kernel_ptr = FUNC0(kfd->doorbell_base,
					   FUNC1(kfd));

	if (!kfd->doorbell_kernel_ptr)
		return -ENOMEM;

	FUNC2("Doorbell initialization:\n");
	FUNC2("doorbell base           == 0x%08lX\n",
			(uintptr_t)kfd->doorbell_base);

	FUNC2("doorbell_id_offset      == 0x%08lX\n",
			kfd->doorbell_id_offset);

	FUNC2("doorbell_process_limit  == 0x%08lX\n",
			doorbell_process_limit);

	FUNC2("doorbell_kernel_offset  == 0x%08lX\n",
			(uintptr_t)kfd->doorbell_base);

	FUNC2("doorbell aperture size  == 0x%08lX\n",
			kfd->shared_resources.doorbell_aperture_size);

	FUNC2("doorbell kernel address == %p\n", kfd->doorbell_kernel_ptr);

	return 0;
}