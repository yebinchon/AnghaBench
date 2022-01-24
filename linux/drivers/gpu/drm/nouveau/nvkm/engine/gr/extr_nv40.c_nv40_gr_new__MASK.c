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
struct nv40_gr {struct nvkm_gr base; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nv40_gr* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvkm_gr_func const*,struct nvkm_device*,int,int,struct nvkm_gr*) ; 

int
FUNC3(const struct nvkm_gr_func *func, struct nvkm_device *device,
	     int index, struct nvkm_gr **pgr)
{
	struct nv40_gr *gr;

	if (!(gr = FUNC1(sizeof(*gr), GFP_KERNEL)))
		return -ENOMEM;
	*pgr = &gr->base;
	FUNC0(&gr->chan);

	return FUNC2(func, device, index, true, &gr->base);
}