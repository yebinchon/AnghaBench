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
struct nvkm_subdev {int dummy; } ;
struct nvkm_msgqueue_queue {scalar_t__ position; scalar_t__ offset; int /*<<< orphan*/  head_reg; } ;
struct nvkm_msgqueue {struct nvkm_falcon* falcon; } ;
struct nvkm_falcon {struct nvkm_subdev* owner; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUEUE_ALIGNMENT ; 
 scalar_t__ FUNC1 (struct nvkm_falcon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_falcon*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_subdev const*,char*) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_msgqueue *priv, struct nvkm_msgqueue_queue *queue,
	      void *data, u32 size)
{
	struct nvkm_falcon *falcon = priv->falcon;
	const struct nvkm_subdev *subdev = priv->falcon->owner;
	u32 head, tail, available;

	head = FUNC1(falcon, queue->head_reg);
	/* has the buffer looped? */
	if (head < queue->position)
		queue->position = queue->offset;

	tail = queue->position;

	available = head - tail;

	if (available == 0) {
		FUNC3(subdev, "no message data available\n");
		return 0;
	}

	if (size > available) {
		FUNC3(subdev, "message data smaller than read request\n");
		size = available;
	}

	FUNC2(priv->falcon, tail, size, 0, data);
	queue->position += FUNC0(size, QUEUE_ALIGNMENT);

	return size;
}