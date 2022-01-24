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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct kfd_local_mem_info {scalar_t__ local_mem_size_public; scalar_t__ local_mem_size_private; } ;
struct kfd_dev {TYPE_1__* pdev; int /*<<< orphan*/  kgd; } ;
struct TYPE_4__ {int number; } ;
struct TYPE_3__ {int devfn; int subsystem_vendor; int subsystem_device; int device; TYPE_2__* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  KFD_GPU_ID_HASH_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kfd_local_mem_info*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static uint32_t FUNC5(struct kfd_dev *gpu)
{
	uint32_t hashout;
	uint32_t buf[7];
	uint64_t local_mem_size;
	int i;
	struct kfd_local_mem_info local_mem_info;

	if (!gpu)
		return 0;

	FUNC0(gpu->kgd, &local_mem_info);

	local_mem_size = local_mem_info.local_mem_size_private +
			local_mem_info.local_mem_size_public;

	buf[0] = gpu->pdev->devfn;
	buf[1] = gpu->pdev->subsystem_vendor |
		(gpu->pdev->subsystem_device << 16);
	buf[2] = FUNC3(gpu->pdev->bus);
	buf[3] = gpu->pdev->device;
	buf[4] = gpu->pdev->bus->number;
	buf[5] = FUNC2(local_mem_size);
	buf[6] = FUNC4(local_mem_size);

	for (i = 0, hashout = 0; i < 7; i++)
		hashout ^= FUNC1(buf[i], KFD_GPU_ID_HASH_WIDTH);

	return hashout;
}