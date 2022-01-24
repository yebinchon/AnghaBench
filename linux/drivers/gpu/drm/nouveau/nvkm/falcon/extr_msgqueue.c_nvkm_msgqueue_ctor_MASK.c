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
struct nvkm_msgqueue_func {int dummy; } ;
struct nvkm_msgqueue {int /*<<< orphan*/  init_done; TYPE_1__* seq; int /*<<< orphan*/  seq_lock; struct nvkm_falcon* falcon; struct nvkm_msgqueue_func const* func; } ;
struct nvkm_falcon {int dummy; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int NVKM_MSGQUEUE_NUM_SEQUENCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(const struct nvkm_msgqueue_func *func,
		   struct nvkm_falcon *falcon,
		   struct nvkm_msgqueue *queue)
{
	int i;

	queue->func = func;
	queue->falcon = falcon;
	FUNC1(&queue->seq_lock);
	for (i = 0; i < NVKM_MSGQUEUE_NUM_SEQUENCES; i++)
		queue->seq[i].id = i;

	FUNC0(&queue->init_done);


}