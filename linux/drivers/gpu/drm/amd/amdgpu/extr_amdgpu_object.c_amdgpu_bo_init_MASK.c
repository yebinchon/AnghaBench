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
struct TYPE_2__ {int mc_vram_size; int vram_width; size_t vram_type; scalar_t__ aper_size; int /*<<< orphan*/  aper_base; int /*<<< orphan*/  vram_mtrr; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long long) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 unsigned long long* amdgpu_vram_names ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC4(struct amdgpu_device *adev)
{
	/* reserve PAT memory space to WC for VRAM */
	FUNC2(adev->gmc.aper_base,
				   adev->gmc.aper_size);

	/* Add an MTRR for the VRAM */
	adev->gmc.vram_mtrr = FUNC3(adev->gmc.aper_base,
					      adev->gmc.aper_size);
	FUNC0("Detected VRAM RAM=%lluM, BAR=%lluM\n",
		 adev->gmc.mc_vram_size >> 20,
		 (unsigned long long)adev->gmc.aper_size >> 20);
	FUNC0("RAM width %dbits %s\n",
		 adev->gmc.vram_width, amdgpu_vram_names[adev->gmc.vram_type]);
	return FUNC1(adev);
}