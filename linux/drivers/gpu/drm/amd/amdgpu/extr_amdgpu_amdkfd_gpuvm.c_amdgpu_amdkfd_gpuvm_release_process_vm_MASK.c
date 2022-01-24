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
struct kgd_dev {int dummy; } ;
struct amdgpu_vm {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,struct amdgpu_vm*) ; 
 struct amdgpu_device* FUNC2 (struct kgd_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*) ; 

void FUNC4(struct kgd_dev *kgd, void *vm)
{
	struct amdgpu_device *adev = FUNC2(kgd);
        struct amdgpu_vm *avm = (struct amdgpu_vm *)vm;

	if (FUNC0(!kgd || !vm))
                return;

        FUNC3("Releasing process vm %p\n", vm);

        /* The original pasid of amdgpu vm has already been
         * released during making a amdgpu vm to a compute vm
         * The current pasid is managed by kfd and will be
         * released on kfd process destroy. Set amdgpu pasid
         * to 0 to avoid duplicate release.
         */
	FUNC1(adev, avm);
}