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
struct nvkm_fifo_func {int dummy; } ;
struct nvkm_fifo {int /*<<< orphan*/  mask; } ;
struct nvkm_device {int dummy; } ;
struct nv50_fifo {struct nvkm_fifo base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nv50_fifo* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvkm_fifo_func const*,struct nvkm_device*,int,int,struct nvkm_fifo*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

int
FUNC3(const struct nvkm_fifo_func *func, struct nvkm_device *device,
	       int index, struct nvkm_fifo **pfifo)
{
	struct nv50_fifo *fifo;
	int ret;

	if (!(fifo = FUNC0(sizeof(*fifo), GFP_KERNEL)))
		return -ENOMEM;
	*pfifo = &fifo->base;

	ret = FUNC1(func, device, index, 128, &fifo->base);
	if (ret)
		return ret;

	FUNC2(0, fifo->base.mask); /* PIO channel */
	FUNC2(127, fifo->base.mask); /* inactive channel */
	return 0;
}