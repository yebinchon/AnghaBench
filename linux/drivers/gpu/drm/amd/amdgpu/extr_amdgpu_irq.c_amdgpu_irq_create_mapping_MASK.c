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
struct TYPE_2__ {int* virq; int /*<<< orphan*/  domain; } ;
struct amdgpu_device {TYPE_1__ irq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 

unsigned FUNC1(struct amdgpu_device *adev, unsigned src_id)
{
	adev->irq.virq[src_id] = FUNC0(adev->irq.domain, src_id);

	return adev->irq.virq[src_id];
}