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
typedef  int uint8_t ;
struct TYPE_3__ {int fw_version; int /*<<< orphan*/ ** filp; int /*<<< orphan*/ * handles; int /*<<< orphan*/  vcpu_bo; int /*<<< orphan*/  gpu_addr; int /*<<< orphan*/  fb_version; int /*<<< orphan*/  idle_work; } ;
struct radeon_device {int family; TYPE_1__ vce; int /*<<< orphan*/  dev; TYPE_2__* vce_fw; } ;
struct TYPE_4__ {int size; char* data; } ;

/* Variables and functions */
#define  CHIP_ARUBA 137 
#define  CHIP_BONAIRE 136 
#define  CHIP_HAWAII 135 
#define  CHIP_KABINI 134 
#define  CHIP_KAVERI 133 
#define  CHIP_MULLINS 132 
#define  CHIP_OLAND 131 
#define  CHIP_PITCAIRN 130 
#define  CHIP_TAHITI 129 
#define  CHIP_VERDE 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 char* FIRMWARE_BONAIRE ; 
 char* FIRMWARE_TAHITI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int RADEON_MAX_VCE_HANDLES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (struct radeon_device*,unsigned long,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  radeon_vce_idle_work_handler ; 
 int FUNC9 (TYPE_2__**,char const*,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*,char*,int*,...) ; 
 int FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char const*,char const*,int) ; 
 unsigned long FUNC13 (struct radeon_device*) ; 
 unsigned long FUNC14 (struct radeon_device*) ; 

int FUNC15(struct radeon_device *rdev)
{
	static const char *fw_version = "[ATI LIB=VCEFW,";
	static const char *fb_version = "[ATI LIB=VCEFWSTATS,";
	unsigned long size;
	const char *fw_name, *c;
	uint8_t start, mid, end;
	int i, r;

	FUNC1(&rdev->vce.idle_work, radeon_vce_idle_work_handler);

	switch (rdev->family) {
	case CHIP_TAHITI:
	case CHIP_PITCAIRN:
	case CHIP_VERDE:
	case CHIP_OLAND:
	case CHIP_ARUBA:
		fw_name = FIRMWARE_TAHITI;
		break;

	case CHIP_BONAIRE:
	case CHIP_KAVERI:
	case CHIP_KABINI:
	case CHIP_HAWAII:
	case CHIP_MULLINS:
		fw_name = FIRMWARE_BONAIRE;
		break;

	default:
		return -EINVAL;
	}

	r = FUNC9(&rdev->vce_fw, fw_name, rdev->dev);
	if (r) {
		FUNC3(rdev->dev, "radeon_vce: Can't load firmware \"%s\"\n",
			fw_name);
		return r;
	}

	/* search for firmware version */

	size = rdev->vce_fw->size - FUNC11(fw_version) - 9;
	c = rdev->vce_fw->data;
	for (;size > 0; --size, ++c)
		if (FUNC12(c, fw_version, FUNC11(fw_version)) == 0)
			break;

	if (size == 0)
		return -EINVAL;

	c += FUNC11(fw_version);
	if (FUNC10(c, "%2hhd.%2hhd.%2hhd]", &start, &mid, &end) != 3)
		return -EINVAL;

	/* search for feedback version */

	size = rdev->vce_fw->size - FUNC11(fb_version) - 3;
	c = rdev->vce_fw->data;
	for (;size > 0; --size, ++c)
		if (FUNC12(c, fb_version, FUNC11(fb_version)) == 0)
			break;

	if (size == 0)
		return -EINVAL;

	c += FUNC11(fb_version);
	if (FUNC10(c, "%2u]", &rdev->vce.fb_version) != 1)
		return -EINVAL;

	FUNC0("Found VCE firmware/feedback version %hhd.%hhd.%hhd / %d!\n",
		 start, mid, end, rdev->vce.fb_version);

	rdev->vce.fw_version = (start << 24) | (mid << 16) | (end << 8);

	/* we can only work with this fw version for now */
	if ((rdev->vce.fw_version != ((40 << 24) | (2 << 16) | (2 << 8))) &&
	    (rdev->vce.fw_version != ((50 << 24) | (0 << 16) | (1 << 8))) &&
	    (rdev->vce.fw_version != ((50 << 24) | (1 << 16) | (2 << 8))))
		return -EINVAL;

	/* allocate firmware, stack and heap BO */

	if (rdev->family < CHIP_BONAIRE)
		size = FUNC13(rdev);
	else
		size = FUNC14(rdev);
	r = FUNC4(rdev, size, PAGE_SIZE, true,
			     RADEON_GEM_DOMAIN_VRAM, 0, NULL, NULL,
			     &rdev->vce.vcpu_bo);
	if (r) {
		FUNC3(rdev->dev, "(%d) failed to allocate VCE bo\n", r);
		return r;
	}

	r = FUNC6(rdev->vce.vcpu_bo, false);
	if (r) {
		FUNC7(&rdev->vce.vcpu_bo);
		FUNC3(rdev->dev, "(%d) failed to reserve VCE bo\n", r);
		return r;
	}

	r = FUNC5(rdev->vce.vcpu_bo, RADEON_GEM_DOMAIN_VRAM,
			  &rdev->vce.gpu_addr);
	FUNC8(rdev->vce.vcpu_bo);
	if (r) {
		FUNC7(&rdev->vce.vcpu_bo);
		FUNC3(rdev->dev, "(%d) VCE bo pin failed\n", r);
		return r;
	}

	for (i = 0; i < RADEON_MAX_VCE_HANDLES; ++i) {
		FUNC2(&rdev->vce.handles[i], 0);
		rdev->vce.filp[i] = NULL;
	}

	return 0;
}