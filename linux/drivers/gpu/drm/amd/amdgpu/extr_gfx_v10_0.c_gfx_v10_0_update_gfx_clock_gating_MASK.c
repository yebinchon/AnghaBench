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
struct amdgpu_device {int cg_flags; } ;

/* Variables and functions */
 int AMD_CG_SUPPORT_GFX_3D_CGCG ; 
 int AMD_CG_SUPPORT_GFX_3D_CGLS ; 
 int AMD_CG_SUPPORT_GFX_CGCG ; 
 int AMD_CG_SUPPORT_GFX_CGLS ; 
 int AMD_CG_SUPPORT_GFX_MGCG ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev,
					    bool enable)
{
	FUNC0(adev);

	if (enable) {
		/* CGCG/CGLS should be enabled after MGCG/MGLS
		 * ===  MGCG + MGLS ===
		 */
		FUNC5(adev, enable);
		/* ===  CGCG /CGLS for GFX 3D Only === */
		FUNC3(adev, enable);
		/* ===  CGCG + CGLS === */
		FUNC4(adev, enable);
	} else {
		/* CGCG/CGLS should be disabled before MGCG/MGLS
		 * ===  CGCG + CGLS ===
		 */
		FUNC4(adev, enable);
		/* ===  CGCG /CGLS for GFX 3D Only === */
		FUNC3(adev, enable);
		/* ===  MGCG + MGLS === */
		FUNC5(adev, enable);
	}

	if (adev->cg_flags &
	    (AMD_CG_SUPPORT_GFX_MGCG |
	     AMD_CG_SUPPORT_GFX_CGLS |
	     AMD_CG_SUPPORT_GFX_CGCG |
	     AMD_CG_SUPPORT_GFX_CGLS |
	     AMD_CG_SUPPORT_GFX_3D_CGCG |
	     AMD_CG_SUPPORT_GFX_3D_CGLS))
		FUNC2(adev, enable);

	FUNC1(adev);

	return 0;
}