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
struct TYPE_4__ {int /*<<< orphan*/  addr_ptr; } ;
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;
union drm_amdgpu_gem_mmap {TYPE_2__ out; TYPE_1__ in; } ;
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_file*,struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (union drm_amdgpu_gem_mmap*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct drm_device *dev, void *data,
			  struct drm_file *filp)
{
	union drm_amdgpu_gem_mmap *args = data;
	uint32_t handle = args->in.handle;
	FUNC1(args, 0, sizeof(*args));
	return FUNC0(filp, dev, handle, &args->out.addr_ptr);
}