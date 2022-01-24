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
typedef  int /*<<< orphan*/  uint32_t ;
struct mga_device {int num_crtc; int has_sdram; int* bpp_shifts; int /*<<< orphan*/  unique_rev_id; int /*<<< orphan*/ * rmmio; int /*<<< orphan*/  rmmio_size; int /*<<< orphan*/  rmmio_base; TYPE_1__* dev; int /*<<< orphan*/  type; } ;
struct drm_device {int /*<<< orphan*/  pdev; struct mga_device* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct mga_device*) ; 
 int /*<<< orphan*/  PCI_MGA_OPTION ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct mga_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct drm_device *dev,
			       uint32_t flags)
{
	struct mga_device *mdev = dev->dev_private;
	int ret, option;

	mdev->type = flags;

	/* Hardcode the number of CRTCs to 1 */
	mdev->num_crtc = 1;

	FUNC5(dev->pdev, PCI_MGA_OPTION, &option);
	mdev->has_sdram = !(option & (1 << 14));

	/* BAR 0 is the framebuffer, BAR 1 contains registers */
	mdev->rmmio_base = FUNC7(mdev->dev->pdev, 1);
	mdev->rmmio_size = FUNC6(mdev->dev->pdev, 1);

	if (!FUNC3(mdev->dev->dev, mdev->rmmio_base, mdev->rmmio_size,
				"mgadrmfb_mmio")) {
		FUNC0("can't reserve mmio registers\n");
		return -ENOMEM;
	}

	mdev->rmmio = FUNC8(dev->pdev, 1, 0);
	if (mdev->rmmio == NULL)
		return -ENOMEM;

	/* stash G200 SE model number for later use */
	if (FUNC1(mdev))
		mdev->unique_rev_id = FUNC2(0x1e24);

	ret = FUNC4(mdev);
	if (ret)
		return ret;

	mdev->bpp_shifts[0] = 0;
	mdev->bpp_shifts[1] = 1;
	mdev->bpp_shifts[2] = 0;
	mdev->bpp_shifts[3] = 2;
	return 0;
}