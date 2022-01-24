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
struct ras_common_if {int dummy; } ;
struct ras_ih_if {struct ras_common_if head; } ;
struct TYPE_4__ {int num_instances; TYPE_1__* instance; scalar_t__ has_page_queue; struct ras_common_if* ras_if; } ;
struct amdgpu_device {TYPE_2__ sdma; } ;
struct TYPE_3__ {int /*<<< orphan*/  page; int /*<<< orphan*/  ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_RAS_BLOCK__SDMA ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,struct ras_common_if*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,struct ras_common_if*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,struct ras_ih_if*) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,struct ras_common_if*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ras_common_if*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC8(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	int i;

	if (FUNC3(adev, AMDGPU_RAS_BLOCK__SDMA) &&
			adev->sdma.ras_if) {
		struct ras_common_if *ras_if = adev->sdma.ras_if;
		struct ras_ih_if ih_info = {
			.head = *ras_if,
		};

		/*remove fs first*/
		FUNC0(adev, ras_if);
		FUNC4(adev, ras_if);
		/*remove the IH*/
		FUNC2(adev, &ih_info);
		FUNC1(adev, ras_if, 0);
		FUNC6(ras_if);
	}

	for (i = 0; i < adev->sdma.num_instances; i++) {
		FUNC5(&adev->sdma.instance[i].ring);
		if (adev->sdma.has_page_queue)
			FUNC5(&adev->sdma.instance[i].page);
	}

	FUNC7(adev);

	return 0;
}