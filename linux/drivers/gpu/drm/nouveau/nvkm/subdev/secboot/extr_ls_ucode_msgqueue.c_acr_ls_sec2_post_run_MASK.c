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
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_secboot {struct nvkm_subdev subdev; } ;
struct nvkm_sec2 {int /*<<< orphan*/  falcon; int /*<<< orphan*/  queue; } ;
struct nvkm_device {struct nvkm_sec2* sec2; } ;
struct nvkm_acr {size_t boot_falcon; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nvkm_secboot_falcon_name ; 

int
FUNC2(const struct nvkm_acr *acr, const struct nvkm_secboot *sb)
{
	const struct nvkm_subdev *subdev = &sb->subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_sec2 *sec = device->sec2;
	/* on SEC arguments are always at the beginning of EMEM */
	const u32 addr_args = 0x01000000;
	int ret;

	ret = FUNC0(sec->queue, sec->falcon, addr_args);
	if (ret)
		return ret;

	FUNC1(&sb->subdev, "%s started\n",
		   nvkm_secboot_falcon_name[acr->boot_falcon]);

	return 0;
}