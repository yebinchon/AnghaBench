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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UVD_STATUS__IDLE ; 
 int /*<<< orphan*/  VCN ; 
 int /*<<< orphan*/  mmUVD_STATUS ; 

__attribute__((used)) static int FUNC1(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	int ret = 0;

	FUNC0(VCN, 0, mmUVD_STATUS, UVD_STATUS__IDLE,
		UVD_STATUS__IDLE, ret);

	return ret;
}