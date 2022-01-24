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
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_msgqueue_queue {int /*<<< orphan*/  head_reg; int /*<<< orphan*/  position; int /*<<< orphan*/  mutex; } ;
struct nvkm_msgqueue {struct nvkm_falcon* falcon; } ;
struct nvkm_falcon {struct nvkm_subdev* owner; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_msgqueue*,struct nvkm_msgqueue_queue*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_msgqueue*,struct nvkm_msgqueue_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_subdev const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_falcon*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct nvkm_msgqueue *priv, struct nvkm_msgqueue_queue *queue,
	       u32 size)
{
	struct nvkm_falcon *falcon = priv->falcon;
	const struct nvkm_subdev *subdev = priv->falcon->owner;
	bool rewind = false;

	FUNC2(&queue->mutex);

	if (!FUNC0(priv, queue, size, &rewind)) {
		FUNC4(subdev, "queue full\n");
		FUNC3(&queue->mutex);
		return -EAGAIN;
	}

	queue->position = FUNC5(falcon, queue->head_reg);

	if (rewind)
		FUNC1(priv, queue);

	return 0;
}