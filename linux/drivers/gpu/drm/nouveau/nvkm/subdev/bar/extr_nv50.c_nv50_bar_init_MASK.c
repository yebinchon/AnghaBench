#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvkm_device {int dummy; } ;
struct nvkm_bar {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nv50_bar {TYPE_2__ base; } ;

/* Variables and functions */
 struct nv50_bar* FUNC0 (struct nvkm_bar*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int) ; 

void
FUNC2(struct nvkm_bar *base)
{
	struct nv50_bar *bar = FUNC0(base);
	struct nvkm_device *device = bar->base.subdev.device;
	int i;

	for (i = 0; i < 8; i++)
		FUNC1(device, 0x001900 + (i * 4), 0x00000000);
}