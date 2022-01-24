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
typedef  int u64 ;
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct nvkm_xtensa {int addr; TYPE_2__* func; int /*<<< orphan*/  gpu_fw; TYPE_1__ engine; } ;
struct nvkm_engine {int dummy; } ;
struct nvkm_device {int /*<<< orphan*/  dev; } ;
struct firmware {int size; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {int unkd28; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NVKM_MEM_TARGET_INST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nvkm_device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_subdev*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_device*,int const,int) ; 
 struct nvkm_xtensa* FUNC9 (struct nvkm_engine*) ; 
 int /*<<< orphan*/  FUNC10 (struct firmware const*) ; 
 int FUNC11 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC13(struct nvkm_engine *engine)
{
	struct nvkm_xtensa *xtensa = FUNC9(engine);
	struct nvkm_subdev *subdev = &xtensa->engine.subdev;
	struct nvkm_device *device = subdev->device;
	const u32 base = xtensa->addr;
	const struct firmware *fw;
	char name[32];
	int i, ret;
	u64 addr, size;
	u32 tmp;

	if (!xtensa->gpu_fw) {
		FUNC12(name, sizeof(name), "nouveau/nv84_xuc%03x",
			 xtensa->addr >> 12);

		ret = FUNC11(&fw, name, device->dev);
		if (ret) {
			FUNC6(subdev, "unable to load firmware %s\n", name);
			return ret;
		}

		if (fw->size > 0x40000) {
			FUNC6(subdev, "firmware %s too large\n", name);
			FUNC10(fw);
			return -EINVAL;
		}

		ret = FUNC3(device, NVKM_MEM_TARGET_INST,
				      0x40000, 0x1000, false,
				      &xtensa->gpu_fw);
		if (ret) {
			FUNC10(fw);
			return ret;
		}

		FUNC1(xtensa->gpu_fw);
		for (i = 0; i < fw->size / 4; i++)
			FUNC7(xtensa->gpu_fw, i * 4, *((u32 *)fw->data + i));
		FUNC0(xtensa->gpu_fw);
		FUNC10(fw);
	}

	addr = FUNC2(xtensa->gpu_fw);
	size = FUNC4(xtensa->gpu_fw);

	FUNC8(device, base + 0xd10, 0x1fffffff); /* ?? */
	FUNC8(device, base + 0xd08, 0x0fffffff); /* ?? */

	FUNC8(device, base + 0xd28, xtensa->func->unkd28); /* ?? */
	FUNC8(device, base + 0xc20, 0x3f); /* INTR */
	FUNC8(device, base + 0xd84, 0x3f); /* INTR_EN */

	FUNC8(device, base + 0xcc0, addr >> 8); /* XT_REGION_BASE */
	FUNC8(device, base + 0xcc4, 0x1c); /* XT_REGION_SETUP */
	FUNC8(device, base + 0xcc8, size >> 8); /* XT_REGION_LIMIT */

	tmp = FUNC5(device, 0x0);
	FUNC8(device, base + 0xde0, tmp); /* SCRATCH_H2X */

	FUNC8(device, base + 0xce8, 0xf); /* XT_REGION_SETUP */

	FUNC8(device, base + 0xc20, 0x3f); /* INTR */
	FUNC8(device, base + 0xd84, 0x3f); /* INTR_EN */
	return 0;
}