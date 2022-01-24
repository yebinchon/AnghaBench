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
struct nvkm_instmem {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv50_instmem {struct nvkm_instmem base; int /*<<< orphan*/  lru; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nv50_instmem* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv50_instmem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nvkm_device*,int,struct nvkm_instmem*) ; 

int
FUNC3(struct nvkm_device *device, int index,
		 struct nvkm_instmem **pimem)
{
	struct nv50_instmem *imem;

	if (!(imem = FUNC1(sizeof(*imem), GFP_KERNEL)))
		return -ENOMEM;
	FUNC2(&nv50_instmem, device, index, &imem->base);
	FUNC0(&imem->lru);
	*pimem = &imem->base;
	return 0;
}