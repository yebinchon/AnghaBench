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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct nvkm_mc_map {int unit; scalar_t__ stat; int /*<<< orphan*/  noauto; } ;
struct nvkm_mc {TYPE_1__* func; } ;
struct nvkm_device {struct nvkm_mc* mc; } ;
typedef  enum nvkm_devidx { ____Placeholder_nvkm_devidx } nvkm_devidx ;
struct TYPE_2__ {struct nvkm_mc_map* reset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvkm_mc*) ; 
 scalar_t__ FUNC1 (struct nvkm_device*,int) ; 

__attribute__((used)) static u32
FUNC2(struct nvkm_device *device, bool isauto,
		   enum nvkm_devidx devidx)
{
	struct nvkm_mc *mc = device->mc;
	const struct nvkm_mc_map *map;
	u64 pmc_enable = 0;
	if (FUNC0(mc)) {
		if (!(pmc_enable = FUNC1(device, devidx))) {
			for (map = mc->func->reset; map && map->stat; map++) {
				if (!isauto || !map->noauto) {
					if (map->unit == devidx) {
						pmc_enable = map->stat;
						break;
					}
				}
			}
		}
	}
	return pmc_enable;
}