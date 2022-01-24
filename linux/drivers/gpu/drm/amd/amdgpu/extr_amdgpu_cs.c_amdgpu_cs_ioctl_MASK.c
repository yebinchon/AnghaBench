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
typedef  union drm_amdgpu_cs {int dummy; } drm_amdgpu_cs ;
struct drm_file {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_device {int /*<<< orphan*/  accel_working; } ;
struct amdgpu_cs_parser {TYPE_1__* job; struct drm_file* filp; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int num_ibs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EAGAIN ; 
 int EBUSY ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int FUNC1 (struct amdgpu_device*,struct amdgpu_cs_parser*) ; 
 int FUNC2 (struct amdgpu_device*,struct amdgpu_cs_parser*) ; 
 int FUNC3 (struct amdgpu_cs_parser*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_cs_parser*,int,int) ; 
 int FUNC5 (struct amdgpu_cs_parser*,void*) ; 
 int FUNC6 (struct amdgpu_cs_parser*,union drm_amdgpu_cs*) ; 
 int FUNC7 (struct amdgpu_cs_parser*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_cs_parser*,int) ; 

int FUNC9(struct drm_device *dev, void *data, struct drm_file *filp)
{
	struct amdgpu_device *adev = dev->dev_private;
	union drm_amdgpu_cs *cs = data;
	struct amdgpu_cs_parser parser = {};
	bool reserved_buffers = false;
	int i, r;

	if (!adev->accel_working)
		return -EBUSY;

	parser.adev = adev;
	parser.filp = filp;

	r = FUNC5(&parser, data);
	if (r) {
		FUNC0("Failed to initialize parser %d!\n", r);
		goto out;
	}

	r = FUNC2(adev, &parser);
	if (r)
		goto out;

	r = FUNC1(adev, &parser);
	if (r) {
		FUNC0("Failed in the dependencies handling %d!\n", r);
		goto out;
	}

	r = FUNC3(&parser, data);
	if (r) {
		if (r == -ENOMEM)
			FUNC0("Not enough memory for command submission!\n");
		else if (r != -ERESTARTSYS && r != -EAGAIN)
			FUNC0("Failed to process the buffer list %d!\n", r);
		goto out;
	}

	reserved_buffers = true;

	for (i = 0; i < parser.job->num_ibs; i++)
		FUNC8(&parser, i);

	r = FUNC7(&parser);
	if (r)
		goto out;

	r = FUNC6(&parser, cs);

out:
	FUNC4(&parser, r, reserved_buffers);

	return r;
}