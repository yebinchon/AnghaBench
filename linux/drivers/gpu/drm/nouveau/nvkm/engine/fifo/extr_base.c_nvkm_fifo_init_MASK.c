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
struct nvkm_fifo {TYPE_1__* func; } ;
struct nvkm_engine {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* init ) (struct nvkm_fifo*) ;} ;

/* Variables and functions */
 struct nvkm_fifo* FUNC0 (struct nvkm_engine*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_fifo*) ; 

__attribute__((used)) static int
FUNC2(struct nvkm_engine *engine)
{
	struct nvkm_fifo *fifo = FUNC0(engine);
	fifo->func->init(fifo);
	return 0;
}