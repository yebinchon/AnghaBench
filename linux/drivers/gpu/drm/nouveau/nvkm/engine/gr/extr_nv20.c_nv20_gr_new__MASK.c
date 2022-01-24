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
struct nvkm_gr_func {int dummy; } ;
struct nvkm_gr {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv20_gr {struct nvkm_gr base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nv20_gr* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvkm_gr_func const*,struct nvkm_device*,int,int,struct nvkm_gr*) ; 

int
FUNC2(const struct nvkm_gr_func *func, struct nvkm_device *device,
	     int index, struct nvkm_gr **pgr)
{
	struct nv20_gr *gr;

	if (!(gr = FUNC0(sizeof(*gr), GFP_KERNEL)))
		return -ENOMEM;
	*pgr = &gr->base;

	return FUNC1(func, device, index, true, &gr->base);
}