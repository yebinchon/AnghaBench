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
struct psp_context {int /*<<< orphan*/  fence_buf_mc_addr; int /*<<< orphan*/  cmd; } ;
struct amdgpu_firmware_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct psp_context*,struct amdgpu_firmware_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct amdgpu_firmware_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct psp_context *psp,
			       struct amdgpu_firmware_info *ucode)
{
	int ret = 0;

	ret = FUNC1(ucode, psp->cmd);
	if (ret)
		return ret;

	ret = FUNC0(psp, ucode, psp->cmd,
				 psp->fence_buf_mc_addr);

	return ret;
}