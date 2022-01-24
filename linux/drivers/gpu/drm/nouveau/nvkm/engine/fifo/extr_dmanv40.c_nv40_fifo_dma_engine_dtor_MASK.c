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
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_2__ {size_t index; } ;
struct nvkm_engine {TYPE_1__ subdev; } ;
struct nv04_fifo_chan {int /*<<< orphan*/ * engn; } ;

/* Variables and functions */
 struct nv04_fifo_chan* FUNC0 (struct nvkm_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct nvkm_fifo_chan *base,
			  struct nvkm_engine *engine)
{
	struct nv04_fifo_chan *chan = FUNC0(base);
	FUNC1(&chan->engn[engine->subdev.index]);
}