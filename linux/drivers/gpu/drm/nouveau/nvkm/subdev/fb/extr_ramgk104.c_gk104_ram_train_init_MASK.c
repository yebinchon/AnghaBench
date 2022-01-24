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
typedef  int /*<<< orphan*/  u8 ;
struct nvkm_ram {int type; TYPE_1__* fb; } ;
struct gk104_ram_train {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  NVKM_RAM_TYPE_GDDR5 128 
 int FUNC0 (struct nvkm_ram*,struct gk104_ram_train*) ; 
 int FUNC1 (struct nvkm_ram*,int,int /*<<< orphan*/ ,struct gk104_ram_train*) ; 
 int /*<<< orphan*/  FUNC2 (struct gk104_ram_train*) ; 
 struct gk104_ram_train* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct nvkm_ram *ram)
{
	u8 ramcfg = FUNC4(&ram->fb->subdev);
	struct gk104_ram_train *train;
	int ret, i;

	if (!(train = FUNC3(sizeof(*train), GFP_KERNEL)))
		return -ENOMEM;

	for (i = 0; i < 0x100; i++) {
		ret = FUNC1(ram, i, ramcfg, train);
		if (ret && ret != -ENOENT)
			break;
	}

	switch (ram->type) {
	case NVKM_RAM_TYPE_GDDR5:
		ret = FUNC0(ram, train);
		break;
	default:
		ret = 0;
		break;
	}

	FUNC2(train);
	return ret;
}