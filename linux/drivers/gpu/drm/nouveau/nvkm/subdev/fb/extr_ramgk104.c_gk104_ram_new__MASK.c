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
typedef  scalar_t__ u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_ram_func {int dummy; } ;
struct nvkm_ram {int type; } ;
struct nvkm_fb {struct nvkm_subdev subdev; } ;
struct nvkm_device {int /*<<< orphan*/  gpio; struct nvkm_bios* bios; } ;
struct nvkm_bios {int dummy; } ;
struct TYPE_2__ {int* r_funcMV; int* r_func2E; void* r_0x100750; void* r_0x100710; void* r_0x10f6bc; void* r_0x10f65c; void* r_0x137320; void* r_0x1373f4; void* r_0x1373f0; void* r_0x10f824; void* r_0x10f69c; void* r_0x10f090; void* r_0x10f318; void* r_0x10f314; void* r_0x10f310; void* r_0x10f210; void* r_0x10f200; void* r_0x62c000; void** r_mr; void* r_0x10f914; void* r_0x10f910; void* r_0x10f978; void* r_0x10f82c; void* r_0x10f800; void* r_0x1373ec; void* r_0x10f830; void* r_0x10f60c; void* r_0x10f670; void* r_0x10f808; void* r_0x10f6b8; void* r_0x10f694; void* r_0x10f698; void* r_0x10f870; void* r_0x10f224; void* r_0x100778; void* r_0x100770; void* r_0x10f610; void* r_0x10f614; void* r_0x10f604; void* r_0x10fec8; void* r_0x10fec4; void* r_0x10f24c; void* r_0x10f250; void* r_0x10f2e8; void* r_0x10f2cc; void* r_0x10f2ac; void* r_0x10f2a8; void* r_0x10f2a4; void* r_0x10f2a0; void* r_0x10f29c; void* r_0x10f298; void* r_0x10f294; void* r_0x10f290; void* r_0x10f248; void* r_0x132040; void* r_0x132004; void* r_0x132000; void* r_0x132034; void* r_0x132030; void* r_0x132024; void* r_0x132028; void* r_0x132020; void* r_gpiotrig; void* r_gpio2E; void* r_gpioMV; int /*<<< orphan*/  mempll; int /*<<< orphan*/  refpll; } ;
struct gk104_ram {int parts; int pmask; int pnuts; TYPE_1__ fuc; struct nvkm_ram base; int /*<<< orphan*/  cfg; } ;
struct dcb_gpio_func {int line; int* log; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_GPIO_UNUSED ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  NVKM_RAM_TYPE_DDR3 129 
#define  NVKM_RAM_TYPE_GDDR5 128 
 int FUNC1 (struct nvkm_ram_func const*,struct nvkm_fb*,struct nvkm_ram*) ; 
 int FUNC2 (struct gk104_ram*,int /*<<< orphan*/ ,int) ; 
 struct gk104_ram* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nvkm_bios*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_subdev*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct dcb_gpio_func*) ; 
 void* FUNC8 (struct nvkm_device*,int) ; 
 void* FUNC9 (int) ; 

int
FUNC10(const struct nvkm_ram_func *func, struct nvkm_fb *fb,
	       struct nvkm_ram **pram)
{
	struct nvkm_subdev *subdev = &fb->subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_bios *bios = device->bios;
	struct dcb_gpio_func gpio;
	struct gk104_ram *ram;
	int ret, i;
	u8  ramcfg = FUNC5(subdev);
	u32 tmp;

	if (!(ram = FUNC3(sizeof(*ram), GFP_KERNEL)))
		return -ENOMEM;
	*pram = &ram->base;

	ret = FUNC1(func, fb, &ram->base);
	if (ret)
		return ret;

	FUNC0(&ram->cfg);

	/* calculate a mask of differently configured memory partitions,
	 * because, of course reclocking wasn't complicated enough
	 * already without having to treat some of them differently to
	 * the others....
	 */
	ram->parts = FUNC8(device, 0x022438);
	ram->pmask = FUNC8(device, 0x022554);
	ram->pnuts = 0;
	for (i = 0, tmp = 0; i < ram->parts; i++) {
		if (!(ram->pmask & (1 << i))) {
			u32 cfg1 = FUNC8(device, 0x110204 + (i * 0x1000));
			if (tmp && tmp != cfg1) {
				ram->pnuts |= (1 << i);
				continue;
			}
			tmp = cfg1;
		}
	}

	/* parse bios data for all rammap table entries up-front, and
	 * build information on whether certain fields differ between
	 * any of the entries.
	 *
	 * the binary driver appears to completely ignore some fields
	 * when all entries contain the same value.  at first, it was
	 * hoped that these were mere optimisations and the bios init
	 * tables had configured as per the values here, but there is
	 * evidence now to suggest that this isn't the case and we do
	 * need to treat this condition as a "don't touch" indicator.
	 */
	for (i = 0; !ret; i++) {
		ret = FUNC2(ram, ramcfg, i);
		if (ret && ret != -ENOENT) {
			FUNC6(subdev, "failed to parse ramcfg data\n");
			return ret;
		}
	}

	/* parse bios data for both pll's */
	ret = FUNC4(bios, 0x0c, &ram->fuc.refpll);
	if (ret) {
		FUNC6(subdev, "mclk refpll data not found\n");
		return ret;
	}

	ret = FUNC4(bios, 0x04, &ram->fuc.mempll);
	if (ret) {
		FUNC6(subdev, "mclk pll data not found\n");
		return ret;
	}

	/* lookup memory voltage gpios */
	ret = FUNC7(device->gpio, 0, 0x18, DCB_GPIO_UNUSED, &gpio);
	if (ret == 0) {
		ram->fuc.r_gpioMV = FUNC9(0x00d610 + (gpio.line * 0x04));
		ram->fuc.r_funcMV[0] = (gpio.log[0] ^ 2) << 12;
		ram->fuc.r_funcMV[1] = (gpio.log[1] ^ 2) << 12;
	}

	ret = FUNC7(device->gpio, 0, 0x2e, DCB_GPIO_UNUSED, &gpio);
	if (ret == 0) {
		ram->fuc.r_gpio2E = FUNC9(0x00d610 + (gpio.line * 0x04));
		ram->fuc.r_func2E[0] = (gpio.log[0] ^ 2) << 12;
		ram->fuc.r_func2E[1] = (gpio.log[1] ^ 2) << 12;
	}

	ram->fuc.r_gpiotrig = FUNC9(0x00d604);

	ram->fuc.r_0x132020 = FUNC9(0x132020);
	ram->fuc.r_0x132028 = FUNC9(0x132028);
	ram->fuc.r_0x132024 = FUNC9(0x132024);
	ram->fuc.r_0x132030 = FUNC9(0x132030);
	ram->fuc.r_0x132034 = FUNC9(0x132034);
	ram->fuc.r_0x132000 = FUNC9(0x132000);
	ram->fuc.r_0x132004 = FUNC9(0x132004);
	ram->fuc.r_0x132040 = FUNC9(0x132040);

	ram->fuc.r_0x10f248 = FUNC9(0x10f248);
	ram->fuc.r_0x10f290 = FUNC9(0x10f290);
	ram->fuc.r_0x10f294 = FUNC9(0x10f294);
	ram->fuc.r_0x10f298 = FUNC9(0x10f298);
	ram->fuc.r_0x10f29c = FUNC9(0x10f29c);
	ram->fuc.r_0x10f2a0 = FUNC9(0x10f2a0);
	ram->fuc.r_0x10f2a4 = FUNC9(0x10f2a4);
	ram->fuc.r_0x10f2a8 = FUNC9(0x10f2a8);
	ram->fuc.r_0x10f2ac = FUNC9(0x10f2ac);
	ram->fuc.r_0x10f2cc = FUNC9(0x10f2cc);
	ram->fuc.r_0x10f2e8 = FUNC9(0x10f2e8);
	ram->fuc.r_0x10f250 = FUNC9(0x10f250);
	ram->fuc.r_0x10f24c = FUNC9(0x10f24c);
	ram->fuc.r_0x10fec4 = FUNC9(0x10fec4);
	ram->fuc.r_0x10fec8 = FUNC9(0x10fec8);
	ram->fuc.r_0x10f604 = FUNC9(0x10f604);
	ram->fuc.r_0x10f614 = FUNC9(0x10f614);
	ram->fuc.r_0x10f610 = FUNC9(0x10f610);
	ram->fuc.r_0x100770 = FUNC9(0x100770);
	ram->fuc.r_0x100778 = FUNC9(0x100778);
	ram->fuc.r_0x10f224 = FUNC9(0x10f224);

	ram->fuc.r_0x10f870 = FUNC9(0x10f870);
	ram->fuc.r_0x10f698 = FUNC9(0x10f698);
	ram->fuc.r_0x10f694 = FUNC9(0x10f694);
	ram->fuc.r_0x10f6b8 = FUNC9(0x10f6b8);
	ram->fuc.r_0x10f808 = FUNC9(0x10f808);
	ram->fuc.r_0x10f670 = FUNC9(0x10f670);
	ram->fuc.r_0x10f60c = FUNC9(0x10f60c);
	ram->fuc.r_0x10f830 = FUNC9(0x10f830);
	ram->fuc.r_0x1373ec = FUNC9(0x1373ec);
	ram->fuc.r_0x10f800 = FUNC9(0x10f800);
	ram->fuc.r_0x10f82c = FUNC9(0x10f82c);

	ram->fuc.r_0x10f978 = FUNC9(0x10f978);
	ram->fuc.r_0x10f910 = FUNC9(0x10f910);
	ram->fuc.r_0x10f914 = FUNC9(0x10f914);

	switch (ram->base.type) {
	case NVKM_RAM_TYPE_GDDR5:
		ram->fuc.r_mr[0] = FUNC9(0x10f300);
		ram->fuc.r_mr[1] = FUNC9(0x10f330);
		ram->fuc.r_mr[2] = FUNC9(0x10f334);
		ram->fuc.r_mr[3] = FUNC9(0x10f338);
		ram->fuc.r_mr[4] = FUNC9(0x10f33c);
		ram->fuc.r_mr[5] = FUNC9(0x10f340);
		ram->fuc.r_mr[6] = FUNC9(0x10f344);
		ram->fuc.r_mr[7] = FUNC9(0x10f348);
		ram->fuc.r_mr[8] = FUNC9(0x10f354);
		ram->fuc.r_mr[15] = FUNC9(0x10f34c);
		break;
	case NVKM_RAM_TYPE_DDR3:
		ram->fuc.r_mr[0] = FUNC9(0x10f300);
		ram->fuc.r_mr[1] = FUNC9(0x10f304);
		ram->fuc.r_mr[2] = FUNC9(0x10f320);
		break;
	default:
		break;
	}

	ram->fuc.r_0x62c000 = FUNC9(0x62c000);
	ram->fuc.r_0x10f200 = FUNC9(0x10f200);
	ram->fuc.r_0x10f210 = FUNC9(0x10f210);
	ram->fuc.r_0x10f310 = FUNC9(0x10f310);
	ram->fuc.r_0x10f314 = FUNC9(0x10f314);
	ram->fuc.r_0x10f318 = FUNC9(0x10f318);
	ram->fuc.r_0x10f090 = FUNC9(0x10f090);
	ram->fuc.r_0x10f69c = FUNC9(0x10f69c);
	ram->fuc.r_0x10f824 = FUNC9(0x10f824);
	ram->fuc.r_0x1373f0 = FUNC9(0x1373f0);
	ram->fuc.r_0x1373f4 = FUNC9(0x1373f4);
	ram->fuc.r_0x137320 = FUNC9(0x137320);
	ram->fuc.r_0x10f65c = FUNC9(0x10f65c);
	ram->fuc.r_0x10f6bc = FUNC9(0x10f6bc);
	ram->fuc.r_0x100710 = FUNC9(0x100710);
	ram->fuc.r_0x100750 = FUNC9(0x100750);
	return 0;
}