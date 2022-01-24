#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct nvkm_bar {TYPE_1__ subdev; } ;
struct nv50_bar {TYPE_3__* bar1; } ;
struct TYPE_6__ {TYPE_2__* node; } ;
struct TYPE_5__ {int offset; } ;

/* Variables and functions */
 struct nv50_bar* FUNC0 (struct nvkm_bar*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int) ; 

void
FUNC2(struct nvkm_bar *base)
{
	struct nvkm_device *device = base->subdev.device;
	struct nv50_bar *bar = FUNC0(base);
	FUNC1(device, 0x001708, 0x80000000 | bar->bar1->node->offset >> 4);
}