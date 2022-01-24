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
struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv50_fifo {TYPE_3__ base; } ;

/* Variables and functions */
 struct nv50_fifo* FUNC0 (struct nvkm_fifo*) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_fifo*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int) ; 

void
FUNC4(struct nvkm_fifo *base)
{
	struct nv50_fifo *fifo = FUNC0(base);
	struct nvkm_device *device = fifo->base.engine.subdev.device;
	int i;

	FUNC2(device, 0x000200, 0x00000100, 0x00000000);
	FUNC2(device, 0x000200, 0x00000100, 0x00000100);
	FUNC3(device, 0x00250c, 0x6f3cfc34);
	FUNC3(device, 0x002044, 0x01003fff);

	FUNC3(device, 0x002100, 0xffffffff);
	FUNC3(device, 0x002140, 0xbfffffff);

	for (i = 0; i < 128; i++)
		FUNC3(device, 0x002600 + (i * 4), 0x00000000);
	FUNC1(fifo);

	FUNC3(device, 0x003200, 0x00000001);
	FUNC3(device, 0x003250, 0x00000001);
	FUNC3(device, 0x002500, 0x00000001);
}