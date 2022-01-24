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
typedef  scalar_t__ u32 ;
struct nvkm_msgqueue_queue {int /*<<< orphan*/  tail_reg; int /*<<< orphan*/  head_reg; } ;
struct nvkm_msgqueue {struct nvkm_falcon* falcon; } ;
struct nvkm_falcon {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvkm_falcon*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC1(struct nvkm_msgqueue *priv, struct nvkm_msgqueue_queue *queue)
{
	struct nvkm_falcon *falcon = priv->falcon;
	u32 head, tail;

	head = FUNC0(falcon, queue->head_reg);
	tail = FUNC0(falcon, queue->tail_reg);

	return head == tail;
}