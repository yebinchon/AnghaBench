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
typedef  int u64 ;
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int crystal; int chipset; } ;
struct nvkm_clk {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct nv50_clk {TYPE_1__ base; } ;
typedef  enum nv_clk_src { ____Placeholder_nv_clk_src } nv_clk_src ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,int) ; 
 struct nv50_clk* FUNC1 (struct nvkm_clk*) ; 
#define  nv_clk_src_core 138 
#define  nv_clk_src_crystal 137 
#define  nv_clk_src_dom6 136 
#define  nv_clk_src_hclk 135 
#define  nv_clk_src_hclkm3 134 
#define  nv_clk_src_hclkm3d2 133 
#define  nv_clk_src_host 132 
#define  nv_clk_src_href 131 
#define  nv_clk_src_mem 130 
#define  nv_clk_src_shader 129 
#define  nv_clk_src_vdec 128 
 int FUNC2 (TYPE_1__*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_subdev*,char*,int,int) ; 
 int FUNC4 (struct nvkm_device*,int) ; 
 int FUNC5 (struct nv50_clk*) ; 
 int FUNC6 (struct nv50_clk*,int) ; 

int
FUNC7(struct nvkm_clk *base, enum nv_clk_src src)
{
	struct nv50_clk *clk = FUNC1(base);
	struct nvkm_subdev *subdev = &clk->base.subdev;
	struct nvkm_device *device = subdev->device;
	u32 mast = FUNC4(device, 0x00c040);
	u32 P = 0;

	switch (src) {
	case nv_clk_src_crystal:
		return device->crystal;
	case nv_clk_src_href:
		return 100000; /* PCIE reference clock */
	case nv_clk_src_hclk:
		return FUNC0((u64)FUNC2(&clk->base, nv_clk_src_href) * 27778, 10000);
	case nv_clk_src_hclkm3:
		return FUNC2(&clk->base, nv_clk_src_hclk) * 3;
	case nv_clk_src_hclkm3d2:
		return FUNC2(&clk->base, nv_clk_src_hclk) * 3 / 2;
	case nv_clk_src_host:
		switch (mast & 0x30000000) {
		case 0x00000000: return FUNC2(&clk->base, nv_clk_src_href);
		case 0x10000000: break;
		case 0x20000000: /* !0x50 */
		case 0x30000000: return FUNC2(&clk->base, nv_clk_src_hclk);
		}
		break;
	case nv_clk_src_core:
		if (!(mast & 0x00100000))
			P = (FUNC4(device, 0x004028) & 0x00070000) >> 16;
		switch (mast & 0x00000003) {
		case 0x00000000: return FUNC2(&clk->base, nv_clk_src_crystal) >> P;
		case 0x00000001: return FUNC2(&clk->base, nv_clk_src_dom6);
		case 0x00000002: return FUNC6(clk, 0x004020) >> P;
		case 0x00000003: return FUNC6(clk, 0x004028) >> P;
		}
		break;
	case nv_clk_src_shader:
		P = (FUNC4(device, 0x004020) & 0x00070000) >> 16;
		switch (mast & 0x00000030) {
		case 0x00000000:
			if (mast & 0x00000080)
				return FUNC2(&clk->base, nv_clk_src_host) >> P;
			return FUNC2(&clk->base, nv_clk_src_crystal) >> P;
		case 0x00000010: break;
		case 0x00000020: return FUNC6(clk, 0x004028) >> P;
		case 0x00000030: return FUNC6(clk, 0x004020) >> P;
		}
		break;
	case nv_clk_src_mem:
		P = (FUNC4(device, 0x004008) & 0x00070000) >> 16;
		if (FUNC4(device, 0x004008) & 0x00000200) {
			switch (mast & 0x0000c000) {
			case 0x00000000:
				return FUNC2(&clk->base, nv_clk_src_crystal) >> P;
			case 0x00008000:
			case 0x0000c000:
				return FUNC2(&clk->base, nv_clk_src_href) >> P;
			}
		} else {
			return FUNC6(clk, 0x004008) >> P;
		}
		break;
	case nv_clk_src_vdec:
		P = (FUNC5(clk) & 0x00000700) >> 8;
		switch (device->chipset) {
		case 0x84:
		case 0x86:
		case 0x92:
		case 0x94:
		case 0x96:
		case 0xa0:
			switch (mast & 0x00000c00) {
			case 0x00000000:
				if (device->chipset == 0xa0) /* wtf?? */
					return FUNC2(&clk->base, nv_clk_src_core) >> P;
				return FUNC2(&clk->base, nv_clk_src_crystal) >> P;
			case 0x00000400:
				return 0;
			case 0x00000800:
				if (mast & 0x01000000)
					return FUNC6(clk, 0x004028) >> P;
				return FUNC6(clk, 0x004030) >> P;
			case 0x00000c00:
				return FUNC2(&clk->base, nv_clk_src_core) >> P;
			}
			break;
		case 0x98:
			switch (mast & 0x00000c00) {
			case 0x00000000:
				return FUNC2(&clk->base, nv_clk_src_core) >> P;
			case 0x00000400:
				return 0;
			case 0x00000800:
				return FUNC2(&clk->base, nv_clk_src_hclkm3d2) >> P;
			case 0x00000c00:
				return FUNC2(&clk->base, nv_clk_src_mem) >> P;
			}
			break;
		}
		break;
	case nv_clk_src_dom6:
		switch (device->chipset) {
		case 0x50:
		case 0xa0:
			return FUNC6(clk, 0x00e810) >> 2;
		case 0x84:
		case 0x86:
		case 0x92:
		case 0x94:
		case 0x96:
		case 0x98:
			P = (FUNC5(clk) & 0x00000007) >> 0;
			switch (mast & 0x0c000000) {
			case 0x00000000: return FUNC2(&clk->base, nv_clk_src_href);
			case 0x04000000: break;
			case 0x08000000: return FUNC2(&clk->base, nv_clk_src_hclk);
			case 0x0c000000:
				return FUNC2(&clk->base, nv_clk_src_hclkm3) >> P;
			}
			break;
		default:
			break;
		}
	default:
		break;
	}

	FUNC3(subdev, "unknown clock source %d %08x\n", src, mast);
	return -EINVAL;
}