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
typedef  scalar_t__ u64 ;
struct nvkm_gpuobj {scalar_t__ addr; scalar_t__ size; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_2__ {size_t index; } ;
struct nvkm_engine {TYPE_1__ subdev; } ;
struct nv50_fifo_chan {int /*<<< orphan*/  eng; struct nvkm_gpuobj** engn; } ;

/* Variables and functions */
 int FUNC0 (struct nvkm_engine*) ; 
 int FUNC1 (scalar_t__) ; 
 struct nv50_fifo_chan* FUNC2 (struct nvkm_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static int
FUNC7(struct nvkm_fifo_chan *base,
			  struct nvkm_engine *engine)
{
	struct nv50_fifo_chan *chan = FUNC2(base);
	struct nvkm_gpuobj *engn = chan->engn[engine->subdev.index];
	u64 limit, start;
	int offset;

	offset = FUNC0(engine);
	if (offset < 0)
		return 0;
	limit = engn->addr + engn->size - 1;
	start = engn->addr;

	FUNC4(chan->eng);
	FUNC5(chan->eng, offset + 0x00, 0x00190000);
	FUNC5(chan->eng, offset + 0x04, FUNC1(limit));
	FUNC5(chan->eng, offset + 0x08, FUNC1(start));
	FUNC5(chan->eng, offset + 0x0c, FUNC6(limit) << 24 |
					    FUNC6(start));
	FUNC5(chan->eng, offset + 0x10, 0x00000000);
	FUNC5(chan->eng, offset + 0x14, 0x00000000);
	FUNC3(chan->eng);
	return 0;
}