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
typedef  int /*<<< orphan*/  u8 ;
struct nvkm_msgqueue_queue {int dummy; } ;
struct nvkm_msgqueue_hdr {int dummy; } ;
struct nvkm_msgqueue {int init_msg_received; } ;

/* Variables and functions */
 int MSG_BUF_SIZE ; 
 scalar_t__ FUNC0 (struct nvkm_msgqueue*,struct nvkm_msgqueue_queue*,struct nvkm_msgqueue_hdr*) ; 
 int FUNC1 (struct nvkm_msgqueue*,struct nvkm_msgqueue_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_msgqueue*,struct nvkm_msgqueue_hdr*) ; 

void
FUNC3(struct nvkm_msgqueue *priv,
			   struct nvkm_msgqueue_queue *queue)
{
	/*
	 * We are invoked from a worker thread, so normally we have plenty of
	 * stack space to work with.
	 */
	u8 msg_buffer[MSG_BUF_SIZE];
	struct nvkm_msgqueue_hdr *hdr = (void *)msg_buffer;
	int ret;

	/* the first message we receive must be the init message */
	if ((!priv->init_msg_received)) {
		ret = FUNC1(priv, hdr);
		if (!ret)
			priv->init_msg_received = true;
	} else {
		while (FUNC0(priv, queue, hdr) > 0)
			FUNC2(priv, hdr);
	}
}