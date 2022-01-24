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
struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int NVKM_ENGINE_CE0 ; 
 int NVKM_ENGINE_CE1 ; 
 int /*<<< orphan*/  gf100_ce0 ; 
 int /*<<< orphan*/  gf100_ce1 ; 
 int FUNC0 (int /*<<< orphan*/ *,struct nvkm_device*,int,int,int,struct nvkm_engine**) ; 

int
FUNC1(struct nvkm_device *device, int index,
	     struct nvkm_engine **pengine)
{
	if (index == NVKM_ENGINE_CE0) {
		return FUNC0(&gf100_ce0, device, index, true,
					0x104000, pengine);
	} else
	if (index == NVKM_ENGINE_CE1) {
		return FUNC0(&gf100_ce1, device, index, true,
					0x105000, pengine);
	}
	return -ENODEV;
}