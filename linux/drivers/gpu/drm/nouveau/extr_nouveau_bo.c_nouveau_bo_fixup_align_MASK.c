#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {scalar_t__ family; int chipset; } ;
struct nvif_device {TYPE_3__ info; } ;
struct TYPE_5__ {struct nvif_device device; } ;
struct nouveau_drm {TYPE_2__ client; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;
struct nouveau_bo {int mode; int page; TYPE_1__ bo; } ;

/* Variables and functions */
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ; 
 int PAGE_SIZE ; 
 int FUNC0 (int,int) ; 
 struct nouveau_drm* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct nouveau_bo *nvbo, u32 flags,
		       int *align, u64 *size)
{
	struct nouveau_drm *drm = FUNC1(nvbo->bo.bdev);
	struct nvif_device *device = &drm->client.device;

	if (device->info.family < NV_DEVICE_INFO_V0_TESLA) {
		if (nvbo->mode) {
			if (device->info.chipset >= 0x40) {
				*align = 65536;
				*size = FUNC2(*size, 64 * nvbo->mode);

			} else if (device->info.chipset >= 0x30) {
				*align = 32768;
				*size = FUNC2(*size, 64 * nvbo->mode);

			} else if (device->info.chipset >= 0x20) {
				*align = 16384;
				*size = FUNC2(*size, 64 * nvbo->mode);

			} else if (device->info.chipset >= 0x10) {
				*align = 16384;
				*size = FUNC2(*size, 32 * nvbo->mode);
			}
		}
	} else {
		*size = FUNC2(*size, (1 << nvbo->page));
		*align = FUNC0((1 <<  nvbo->page), *align);
	}

	*size = FUNC2(*size, PAGE_SIZE);
}