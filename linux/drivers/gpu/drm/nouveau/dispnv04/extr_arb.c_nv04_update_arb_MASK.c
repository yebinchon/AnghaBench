#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct nvif_object {int dummy; } ;
struct nv_sim_state {int pclk_khz; int mclk_khz; int nvclk_khz; int bpp; int memory_type; int memory_width; int mem_latency; int mem_page_miss; int /*<<< orphan*/  two_heads; } ;
struct nv_fifo_info {int burst; int lwm; } ;
struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_7__ {TYPE_2__ info; struct nvif_object object; } ;
struct TYPE_8__ {TYPE_3__ device; } ;
struct nouveau_drm {TYPE_4__ client; } ;
struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_5__ {int device; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV04_PFB_CFG0 ; 
 int /*<<< orphan*/  NV04_PFB_CFG1 ; 
 scalar_t__ NV_DEVICE_INFO_V0_TNT ; 
 int /*<<< orphan*/  NV_PEXTDEV_BOOT_0 ; 
 int /*<<< orphan*/  PLL_CORE ; 
 int /*<<< orphan*/  PLL_MEMORY ; 
 int FUNC0 (int) ; 
 struct nouveau_drm* FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nv_fifo_info*,struct nv_sim_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct nv_fifo_info*,struct nv_sim_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct nvif_object*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void
FUNC10(struct drm_device *dev, int VClk, int bpp,
		int *burst, int *lwm)
{
	struct nouveau_drm *drm = FUNC1(dev);
	struct nvif_object *device = &FUNC1(dev)->client.device.object;
	struct nv_fifo_info fifo_data;
	struct nv_sim_state sim_data;
	int MClk = FUNC2(dev, PLL_MEMORY);
	int NVClk = FUNC2(dev, PLL_CORE);
	uint32_t cfg1 = FUNC6(device, NV04_PFB_CFG1);

	sim_data.pclk_khz = VClk;
	sim_data.mclk_khz = MClk;
	sim_data.nvclk_khz = NVClk;
	sim_data.bpp = bpp;
	sim_data.two_heads = FUNC5(dev);
	if ((dev->pdev->device & 0xffff) == 0x01a0 /*CHIPSET_NFORCE*/ ||
	    (dev->pdev->device & 0xffff) == 0x01f0 /*CHIPSET_NFORCE2*/) {
		uint32_t type;
		int domain = FUNC7(dev->pdev->bus);

		FUNC9(FUNC8(domain, 0, 1),
				      0x7c, &type);

		sim_data.memory_type = (type >> 12) & 1;
		sim_data.memory_width = 64;
		sim_data.mem_latency = 3;
		sim_data.mem_page_miss = 10;
	} else {
		sim_data.memory_type = FUNC6(device, NV04_PFB_CFG0) & 0x1;
		sim_data.memory_width = (FUNC6(device, NV_PEXTDEV_BOOT_0) & 0x10) ? 128 : 64;
		sim_data.mem_latency = cfg1 & 0xf;
		sim_data.mem_page_miss = ((cfg1 >> 4) & 0xf) + ((cfg1 >> 31) & 0x1);
	}

	if (drm->client.device.info.family == NV_DEVICE_INFO_V0_TNT)
		FUNC3(&fifo_data, &sim_data);
	else
		FUNC4(&fifo_data, &sim_data);

	*burst = FUNC0(fifo_data.burst >> 4);
	*lwm = fifo_data.lwm >> 3;
}