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
typedef  int u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_msgqueue_queue {int index; } ;
struct nvkm_msgqueue_hdr {int size; } ;
struct nvkm_msgqueue {TYPE_1__* falcon; } ;
struct TYPE_2__ {struct nvkm_subdev* owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int HDR_SIZE ; 
 int MSG_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_msgqueue*,struct nvkm_msgqueue_queue*,int) ; 
 scalar_t__ FUNC1 (struct nvkm_msgqueue*,struct nvkm_msgqueue_queue*) ; 
 int FUNC2 (struct nvkm_msgqueue*,struct nvkm_msgqueue_queue*) ; 
 int FUNC3 (struct nvkm_msgqueue*,struct nvkm_msgqueue_queue*,struct nvkm_msgqueue_hdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_subdev const*,char*,int) ; 

__attribute__((used)) static int
FUNC5(struct nvkm_msgqueue *priv, struct nvkm_msgqueue_queue *queue,
	       struct nvkm_msgqueue_hdr *hdr)
{
	const struct nvkm_subdev *subdev = priv->falcon->owner;
	int err;

	err = FUNC2(priv, queue);
	if (err) {
		FUNC4(subdev, "fail to open queue %d\n", queue->index);
		return err;
	}

	if (FUNC1(priv, queue)) {
		err = 0;
		goto close;
	}

	err = FUNC3(priv, queue, hdr, HDR_SIZE);
	if (err >= 0 && err != HDR_SIZE)
		err = -EINVAL;
	if (err < 0) {
		FUNC4(subdev, "failed to read message header: %d\n", err);
		goto close;
	}

	if (hdr->size > MSG_BUF_SIZE) {
		FUNC4(subdev, "message too big (%d bytes)\n", hdr->size);
		err = -ENOSPC;
		goto close;
	}

	if (hdr->size > HDR_SIZE) {
		u32 read_size = hdr->size - HDR_SIZE;

		err = FUNC3(priv, queue, (hdr + 1), read_size);
		if (err >= 0 && err != read_size)
			err = -EINVAL;
		if (err < 0) {
			FUNC4(subdev, "failed to read message: %d\n", err);
			goto close;
		}
	}

close:
	FUNC0(priv, queue, (err >= 0));

	return err;
}