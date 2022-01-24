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
struct nvkm_ram_func {scalar_t__ (* probe_fbpa_amount ) (struct nvkm_device*,int) ;} ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct nvkm_device*,int) ; 
 scalar_t__ FUNC3 (struct nvkm_device*,int) ; 

u32
FUNC4(const struct nvkm_ram_func *func, u32 fbpao,
			   struct nvkm_device *device, int fbp, int *pltcs)
{
	u32 ltcs  = FUNC2(device, 0x022450);
	u32 fbpas = FUNC2(device, 0x022458);
	u32 fbpa  = fbp * fbpas;
	u32 size  = 0;
	if (!(FUNC2(device, 0x021d38) & FUNC0(fbp))) {
		u32 ltco = FUNC2(device, 0x021d70 + (fbp * 4));
		u32 ltcm = ~ltco & ((1 << ltcs) - 1);

		while (fbpas--) {
			if (!(fbpao & (1 << fbpa)))
				size += func->probe_fbpa_amount(device, fbpa);
			fbpa++;
		}

		*pltcs = FUNC1(ltcm);
	}
	return size;
}