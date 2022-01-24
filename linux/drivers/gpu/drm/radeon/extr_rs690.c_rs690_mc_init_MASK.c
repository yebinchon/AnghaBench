#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint32_t ;
typedef  int u64 ;
struct TYPE_3__ {int vram_is_ddr; int vram_width; int real_vram_size; int mc_vram_size; unsigned long long aper_size; unsigned long long visible_vram_size; int igp_sideport_enabled; scalar_t__ gtt_size; scalar_t__ gtt_base_align; scalar_t__ aper_base; } ;
struct radeon_device {int fastfb_working; TYPE_1__ mc; int /*<<< orphan*/  pdev; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,unsigned long long) ; 
 unsigned long long FUNC1 (void*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  RADEON_CONFIG_MEMSIZE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_00001E_K8_FB_LOCATION ; 
 int /*<<< orphan*/  R_00005F_MC_MISC_UMA_CNTL ; 
 int /*<<< orphan*/  R_000100_MCCFG_FB_LOCATION ; 
 unsigned long long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct radeon_device*) ; 
 int radeon_fastfb ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC13(struct radeon_device *rdev)
{
	u64 base;
	uint32_t h_addr, l_addr;
	unsigned long long k8_addr;

	FUNC11(rdev);
	rdev->mc.vram_is_ddr = true;
	rdev->mc.vram_width = 128;
	rdev->mc.real_vram_size = FUNC3(RADEON_CONFIG_MEMSIZE);
	rdev->mc.mc_vram_size = rdev->mc.real_vram_size;
	rdev->mc.aper_base = FUNC6(rdev->pdev, 0);
	rdev->mc.aper_size = FUNC5(rdev->pdev, 0);
	rdev->mc.visible_vram_size = rdev->mc.aper_size;
	base = FUNC4(R_000100_MCCFG_FB_LOCATION);
	base = FUNC2(base) << 16;
	rdev->mc.igp_sideport_enabled = FUNC7(rdev);
	/* Some boards seem to be configured for 128MB of sideport memory,
	 * but really only have 64MB.  Just skip the sideport and use
	 * UMA memory.
	 */
	if (rdev->mc.igp_sideport_enabled &&
	    (rdev->mc.real_vram_size == (384 * 1024 * 1024))) {
		base += 128 * 1024 * 1024;
		rdev->mc.real_vram_size -= 128 * 1024 * 1024;
		rdev->mc.mc_vram_size = rdev->mc.real_vram_size;
	}

	/* Use K8 direct mapping for fast fb access. */ 
	rdev->fastfb_working = false;
	h_addr = FUNC1(FUNC4(R_00005F_MC_MISC_UMA_CNTL));
	l_addr = FUNC4(R_00001E_K8_FB_LOCATION);
	k8_addr = ((unsigned long long)h_addr) << 32 | l_addr;
#if defined(CONFIG_X86_32) && !defined(CONFIG_X86_PAE)
	if (k8_addr + rdev->mc.visible_vram_size < 0x100000000ULL)	
#endif
	{
		/* FastFB shall be used with UMA memory. Here it is simply disabled when sideport 
		 * memory is present.
		 */
		if (rdev->mc.igp_sideport_enabled == false && radeon_fastfb == 1) {
			FUNC0("Direct mapping: aper base at 0x%llx, replaced by direct mapping base 0x%llx.\n", 
					(unsigned long long)rdev->mc.aper_base, k8_addr);
			rdev->mc.aper_base = (resource_size_t)k8_addr;
			rdev->fastfb_working = true;
		}
	}  

	FUNC12(rdev);
	FUNC10(rdev, &rdev->mc, base);
	rdev->mc.gtt_base_align = rdev->mc.gtt_size - 1;
	FUNC8(rdev, &rdev->mc);
	FUNC9(rdev);
}