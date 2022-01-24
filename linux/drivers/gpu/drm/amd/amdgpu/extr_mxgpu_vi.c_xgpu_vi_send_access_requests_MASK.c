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
struct amdgpu_device {int dummy; } ;
typedef  enum idh_request { ____Placeholder_idh_request } idh_request ;

/* Variables and functions */
 int /*<<< orphan*/  IDH_READY_TO_ACCESS_GPU ; 
 int IDH_REQ_GPU_FINI_ACCESS ; 
 int IDH_REQ_GPU_INIT_ACCESS ; 
 int IDH_REQ_GPU_RESET_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev,
					enum idh_request request)
{
	int r;

	FUNC2(adev, request);

	/* start to poll ack */
	r = FUNC3(adev);
	if (r)
		return r;

	FUNC1(adev, false);

	/* start to check msg if request is idh_req_gpu_init_access */
	if (request == IDH_REQ_GPU_INIT_ACCESS ||
		request == IDH_REQ_GPU_FINI_ACCESS ||
		request == IDH_REQ_GPU_RESET_ACCESS) {
		r = FUNC4(adev, IDH_READY_TO_ACCESS_GPU);
		if (r) {
			FUNC0("Doesn't get ack from pf, give up\n");
			return r;
		}
	}

	return 0;
}