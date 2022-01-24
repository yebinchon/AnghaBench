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
struct nvbios {int major_version; int execute; int is_mobile; } ;
struct nouveau_drm {struct nvbios vbios; } ;
struct drm_device {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_CIO_CRE_4B ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_drm*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 struct nouveau_drm* FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_device*,struct nvbios*) ; 
 int FUNC7 (struct drm_device*,struct nvbios*) ; 

int
FUNC8(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC4(dev);
	struct nvbios *bios = &drm->vbios;
	int ret;

	/* only relevant for PCI devices */
	if (!dev->pdev)
		return 0;

	if (!FUNC0(dev))
		return -ENODEV;

	ret = FUNC6(dev, bios);
	if (ret)
		return ret;

	if (!bios->major_version)	/* we don't run version 0 bios */
		return 0;

	/* init script execution disabled */
	bios->execute = false;

	/* ... unless card isn't POSTed already */
	if (!FUNC3(dev)) {
		FUNC2(drm, "Adaptor not initialised, "
			"running VBIOS init tables.\n");
		bios->execute = true;
	}

	ret = FUNC5(dev);
	if (ret)
		return ret;

	/* feature_byte on BMP is poor, but init always sets CR4B */
	if (bios->major_version < 5)
		bios->is_mobile = FUNC1(dev, 0, NV_CIO_CRE_4B) & 0x40;

	/* all BIT systems need p_f_m_t for digital_min_front_porch */
	if (bios->is_mobile || bios->major_version >= 5)
		ret = FUNC7(dev, bios);

	/* allow subsequent scripts to execute */
	bios->execute = true;

	return 0;
}