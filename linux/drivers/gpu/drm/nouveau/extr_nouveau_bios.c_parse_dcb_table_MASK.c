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
typedef  int u8 ;
struct dcb_table {int version; } ;
struct nvbios {scalar_t__ type; struct dcb_table dcb; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NVBIOS_BMP ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvbios*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct nvbios*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct dcb_table*) ; 
 struct nouveau_drm* FUNC6 (struct drm_device*) ; 
 int* FUNC7 (struct drm_device*,int) ; 
 int* FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  parse_dcb_entry ; 

__attribute__((used)) static int
FUNC11(struct drm_device *dev, struct nvbios *bios)
{
	struct nouveau_drm *drm = FUNC6(dev);
	struct dcb_table *dcb = &bios->dcb;
	u8 *dcbt, *conn;
	int idx;

	dcbt = FUNC10(dev);
	if (!dcbt) {
		/* handle pre-DCB boards */
		if (bios->type == NVBIOS_BMP) {
			FUNC4(dev, bios);
			return 0;
		}

		return -EINVAL;
	}

	FUNC0(drm, "DCB version %d.%d\n", dcbt[0] >> 4, dcbt[0] & 0xf);

	dcb->version = dcbt[0];
	FUNC9(dev, NULL, parse_dcb_entry);

	/*
	 * apart for v2.1+ not being known for requiring merging, this
	 * guarantees dcbent->index is the index of the entry in the rom image
	 */
	if (dcb->version < 0x21)
		FUNC5(dev, dcb);

	/* dump connector table entries to log, if any exist */
	idx = -1;
	while ((conn = FUNC7(dev, ++idx))) {
		if (conn[0] != 0xff) {
			if (FUNC8(dev)[3] < 4)
				FUNC0(drm, "DCB conn %02d: %04x\n",
					idx, FUNC1(conn[0]));
			else
				FUNC0(drm, "DCB conn %02d: %08x\n",
					idx, FUNC2(conn[0]));
		}
	}
	FUNC3(bios);
	return 0;
}