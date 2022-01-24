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
typedef  int u32 ;
struct pipe_state {int /*<<< orphan*/  pipe_0x0040; int /*<<< orphan*/  pipe_0x0000; int /*<<< orphan*/  pipe_0x4400; int /*<<< orphan*/  pipe_0x7800; int /*<<< orphan*/  pipe_0x7400; int /*<<< orphan*/  pipe_0x7000; int /*<<< orphan*/  pipe_0x6c00; int /*<<< orphan*/  pipe_0x6800; int /*<<< orphan*/  pipe_0x6400; int /*<<< orphan*/  pipe_0x0200; } ;
struct nvkm_device {int dummy; } ;
struct nv10_gr_chan {struct pipe_state pipe_state; struct nv10_gr* gr; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv10_gr {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV10_PGRAPH_PIPE_ADDRESS ; 
 int /*<<< orphan*/  NV10_PGRAPH_PIPE_DATA ; 
 int /*<<< orphan*/  NV10_PGRAPH_XFMODE0 ; 
 int /*<<< orphan*/  NV10_PGRAPH_XFMODE1 ; 
 int /*<<< orphan*/  FUNC0 (struct nv10_gr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct nv10_gr_chan *chan)
{
	struct nv10_gr *gr = chan->gr;
	struct pipe_state *pipe = &chan->pipe_state;
	struct nvkm_device *device = gr->base.engine.subdev.device;
	u32 xfmode0, xfmode1;
	int i;

	FUNC1(&gr->base);
	/* XXX check haiku comments */
	xfmode0 = FUNC2(device, NV10_PGRAPH_XFMODE0);
	xfmode1 = FUNC2(device, NV10_PGRAPH_XFMODE1);
	FUNC3(device, NV10_PGRAPH_XFMODE0, 0x10000000);
	FUNC3(device, NV10_PGRAPH_XFMODE1, 0x00000000);
	FUNC3(device, NV10_PGRAPH_PIPE_ADDRESS, 0x000064c0);
	for (i = 0; i < 4; i++)
		FUNC3(device, NV10_PGRAPH_PIPE_DATA, 0x3f800000);
	for (i = 0; i < 4; i++)
		FUNC3(device, NV10_PGRAPH_PIPE_DATA, 0x00000000);

	FUNC3(device, NV10_PGRAPH_PIPE_ADDRESS, 0x00006ab0);
	for (i = 0; i < 3; i++)
		FUNC3(device, NV10_PGRAPH_PIPE_DATA, 0x3f800000);

	FUNC3(device, NV10_PGRAPH_PIPE_ADDRESS, 0x00006a80);
	for (i = 0; i < 3; i++)
		FUNC3(device, NV10_PGRAPH_PIPE_DATA, 0x00000000);

	FUNC3(device, NV10_PGRAPH_PIPE_ADDRESS, 0x00000040);
	FUNC3(device, NV10_PGRAPH_PIPE_DATA, 0x00000008);


	FUNC0(gr, pipe->pipe_0x0200, 0x0200);
	FUNC1(&gr->base);

	/* restore XFMODE */
	FUNC3(device, NV10_PGRAPH_XFMODE0, xfmode0);
	FUNC3(device, NV10_PGRAPH_XFMODE1, xfmode1);
	FUNC0(gr, pipe->pipe_0x6400, 0x6400);
	FUNC0(gr, pipe->pipe_0x6800, 0x6800);
	FUNC0(gr, pipe->pipe_0x6c00, 0x6c00);
	FUNC0(gr, pipe->pipe_0x7000, 0x7000);
	FUNC0(gr, pipe->pipe_0x7400, 0x7400);
	FUNC0(gr, pipe->pipe_0x7800, 0x7800);
	FUNC0(gr, pipe->pipe_0x4400, 0x4400);
	FUNC0(gr, pipe->pipe_0x0000, 0x0000);
	FUNC0(gr, pipe->pipe_0x0040, 0x0040);
	FUNC1(&gr->base);
}