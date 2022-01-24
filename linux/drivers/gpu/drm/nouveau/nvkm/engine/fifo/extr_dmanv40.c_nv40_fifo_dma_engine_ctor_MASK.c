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
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;
struct TYPE_2__ {int index; } ;
struct nvkm_engine {TYPE_1__ subdev; } ;
struct nv04_fifo_chan {int /*<<< orphan*/ * engn; } ;

/* Variables and functions */
 struct nv04_fifo_chan* FUNC0 (struct nvkm_fifo_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_engine*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nvkm_object*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_fifo_chan *base,
			  struct nvkm_engine *engine,
			  struct nvkm_object *object)
{
	struct nv04_fifo_chan *chan = FUNC0(base);
	const int engn = engine->subdev.index;
	u32 reg, ctx;

	if (!FUNC1(engine, &reg, &ctx))
		return 0;

	return FUNC2(object, NULL, 0, &chan->engn[engn]);
}