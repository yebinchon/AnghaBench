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
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev,
					    bool enable)
{
	if (enable) {
		/* CGCG/CGLS should be enabled after MGCG/MGLS
		 * ===  MGCG + MGLS ===
		 */
		FUNC2(adev, enable);
		/* ===  CGCG /CGLS for GFX 3D Only === */
		FUNC0(adev, enable);
		/* ===  CGCG + CGLS === */
		FUNC1(adev, enable);
	} else {
		/* CGCG/CGLS should be disabled before MGCG/MGLS
		 * ===  CGCG + CGLS ===
		 */
		FUNC1(adev, enable);
		/* ===  CGCG /CGLS for GFX 3D Only === */
		FUNC0(adev, enable);
		/* ===  MGCG + MGLS === */
		FUNC2(adev, enable);
	}
	return 0;
}