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
typedef  unsigned long long uint32_t ;
typedef  int u32 ;
struct TYPE_2__ {int vram_is_ddr; int vram_width; unsigned long long aper_size; unsigned long long visible_vram_size; int igp_sideport_enabled; scalar_t__ aper_base; void* real_vram_size; void* mc_vram_size; } ;
struct radeon_device {int flags; scalar_t__ family; int fastfb_working; TYPE_1__ mc; int /*<<< orphan*/  pdev; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int CHANSIZE_MASK ; 
 int CHANSIZE_OVERRIDE ; 
 scalar_t__ CHIP_RS780 ; 
 scalar_t__ CHIP_RS880 ; 
 int /*<<< orphan*/  CHMAP ; 
 int /*<<< orphan*/  CONFIG_MEMSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,unsigned long long) ; 
 unsigned long long FUNC1 (unsigned long long) ; 
 int NOOFCHAN_MASK ; 
 int NOOFCHAN_SHIFT ; 
 int RADEON_IS_IGP ; 
 int /*<<< orphan*/  RAMCFG ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000011_K8_FB_LOCATION ; 
 int /*<<< orphan*/  R_000012_MC_MISC_UMA_CNTL ; 
 unsigned long long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,TYPE_1__*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int radeon_fastfb ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC10(struct radeon_device *rdev)
{
	u32 tmp;
	int chansize, numchan;
	uint32_t h_addr, l_addr;
	unsigned long long k8_addr;

	/* Get VRAM informations */
	rdev->mc.vram_is_ddr = true;
	tmp = FUNC2(RAMCFG);
	if (tmp & CHANSIZE_OVERRIDE) {
		chansize = 16;
	} else if (tmp & CHANSIZE_MASK) {
		chansize = 64;
	} else {
		chansize = 32;
	}
	tmp = FUNC2(CHMAP);
	switch ((tmp & NOOFCHAN_MASK) >> NOOFCHAN_SHIFT) {
	case 0:
	default:
		numchan = 1;
		break;
	case 1:
		numchan = 2;
		break;
	case 2:
		numchan = 4;
		break;
	case 3:
		numchan = 8;
		break;
	}
	rdev->mc.vram_width = numchan * chansize;
	/* Could aper size report 0 ? */
	rdev->mc.aper_base = FUNC5(rdev->pdev, 0);
	rdev->mc.aper_size = FUNC4(rdev->pdev, 0);
	/* Setup GPU memory space */
	rdev->mc.mc_vram_size = FUNC2(CONFIG_MEMSIZE);
	rdev->mc.real_vram_size = FUNC2(CONFIG_MEMSIZE);
	rdev->mc.visible_vram_size = rdev->mc.aper_size;
	FUNC6(rdev, &rdev->mc);

	if (rdev->flags & RADEON_IS_IGP) {
		FUNC9(rdev);
		rdev->mc.igp_sideport_enabled = FUNC7(rdev);

		if (rdev->family == CHIP_RS780 || rdev->family == CHIP_RS880) {
			/* Use K8 direct mapping for fast fb access. */
			rdev->fastfb_working = false;
			h_addr = FUNC1(FUNC3(R_000012_MC_MISC_UMA_CNTL));
			l_addr = FUNC3(R_000011_K8_FB_LOCATION);
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
		}
	}

	FUNC8(rdev);
	return 0;
}