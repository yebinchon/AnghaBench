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
typedef  int /*<<< orphan*/  uint64_t ;
struct ttm_buffer_object {int /*<<< orphan*/  mem; int /*<<< orphan*/  ttm; int /*<<< orphan*/  bdev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 struct amdgpu_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct amdgpu_device*,struct ttm_buffer_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct ttm_buffer_object *tbo)
{
	struct amdgpu_device *adev = FUNC0(tbo->bdev);
	uint64_t flags;
	int r;

	if (!tbo->ttm)
		return 0;

	flags = FUNC2(adev, tbo->ttm, &tbo->mem);
	r = FUNC1(adev, tbo, flags);

	return r;
}