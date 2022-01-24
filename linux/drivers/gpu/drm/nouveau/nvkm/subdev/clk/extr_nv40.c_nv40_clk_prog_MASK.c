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
struct nvkm_device {int dummy; } ;
struct nvkm_clk {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nv40_clk {int npll_ctrl; int spll; int ctrl; int /*<<< orphan*/  npll_coef; TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nv40_clk* FUNC1 (struct nvkm_clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_clk *base)
{
	struct nv40_clk *clk = FUNC1(base);
	struct nvkm_device *device = clk->base.subdev.device;
	FUNC2(device, 0x00c040, 0x00000333, 0x00000000);
	FUNC3(device, 0x004004, clk->npll_coef);
	FUNC2(device, 0x004000, 0xc0070100, clk->npll_ctrl);
	FUNC2(device, 0x004008, 0xc007ffff, clk->spll);
	FUNC0(5);
	FUNC2(device, 0x00c040, 0x00000333, clk->ctrl);
	return 0;
}