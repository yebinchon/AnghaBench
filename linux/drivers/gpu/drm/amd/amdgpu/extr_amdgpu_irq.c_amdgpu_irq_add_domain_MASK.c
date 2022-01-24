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
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;
struct amdgpu_device {TYPE_1__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_MAX_IRQ_SRC_ID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  amdgpu_hw_irqdomain_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct amdgpu_device*) ; 

int FUNC2(struct amdgpu_device *adev)
{
	adev->irq.domain = FUNC1(NULL, AMDGPU_MAX_IRQ_SRC_ID,
						 &amdgpu_hw_irqdomain_ops, adev);
	if (!adev->irq.domain) {
		FUNC0("GPU irq add domain failed\n");
		return -ENODEV;
	}

	return 0;
}