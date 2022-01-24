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
struct nvkm_instmem {int /*<<< orphan*/  subdev; } ;
struct nvkm_device {TYPE_1__* func; } ;
struct nv40_instmem {struct nvkm_instmem base; int /*<<< orphan*/  iomem; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* resource_size ) (struct nvkm_device*,int) ;int /*<<< orphan*/  (* resource_addr ) (struct nvkm_device*,int) ;} ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nv40_instmem* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv40_instmem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nvkm_device*,int,struct nvkm_instmem*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_device*,int) ; 

int
FUNC7(struct nvkm_device *device, int index,
		 struct nvkm_instmem **pimem)
{
	struct nv40_instmem *imem;
	int bar;

	if (!(imem = FUNC1(sizeof(*imem), GFP_KERNEL)))
		return -ENOMEM;
	FUNC3(&nv40_instmem, device, index, &imem->base);
	*pimem = &imem->base;

	/* map bar */
	if (device->func->resource_size(device, 2))
		bar = 2;
	else
		bar = 3;

	imem->iomem = FUNC0(device->func->resource_addr(device, bar),
				 device->func->resource_size(device, bar));
	if (!imem->iomem) {
		FUNC2(&imem->base.subdev, "unable to map PRAMIN BAR\n");
		return -EFAULT;
	}

	return 0;
}