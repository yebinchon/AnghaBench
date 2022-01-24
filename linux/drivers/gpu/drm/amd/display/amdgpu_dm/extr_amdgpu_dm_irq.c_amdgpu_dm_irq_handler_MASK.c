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
struct amdgpu_iv_entry {int /*<<< orphan*/ * src_data; int /*<<< orphan*/  src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dc; } ;
struct amdgpu_device {TYPE_1__ dm; } ;
typedef  enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev,
				 struct amdgpu_irq_src *source,
				 struct amdgpu_iv_entry *entry)
{

	enum dc_irq_source src =
		FUNC3(
			adev->dm.dc,
			entry->src_id,
			entry->src_data[0]);

	FUNC2(adev->dm.dc, src);

	/* Call high irq work immediately */
	FUNC0(adev, src);
	/*Schedule low_irq work */
	FUNC1(adev, src);

	return 0;
}