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
typedef  int u32 ;
struct a6xx_hfi_queue {int /*<<< orphan*/  seqnum; } ;
struct a6xx_gmu {int /*<<< orphan*/  dev; struct a6xx_hfi_queue* queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 size_t HFI_COMMAND_QUEUE ; 
 int HFI_MSG_CMD ; 
 int /*<<< orphan*/ * a6xx_hfi_msg_id ; 
 int FUNC1 (struct a6xx_gmu*,struct a6xx_hfi_queue*,void*,int) ; 
 int FUNC2 (struct a6xx_gmu*,int,int,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct a6xx_gmu *gmu, int id,
		void *data, u32 size, u32 *payload, u32 payload_size)
{
	struct a6xx_hfi_queue *queue = &gmu->queues[HFI_COMMAND_QUEUE];
	int ret, dwords = size >> 2;
	u32 seqnum;

	seqnum = FUNC3(&queue->seqnum) % 0xfff;

	/* First dword of the message is the message header - fill it in */
	*((u32 *) data) = (seqnum << 20) | (HFI_MSG_CMD << 16) |
		(dwords << 8) | id;

	ret = FUNC1(gmu, queue, data, dwords);
	if (ret) {
		FUNC0(gmu->dev, "Unable to send message %s id %d\n",
			a6xx_hfi_msg_id[id], seqnum);
		return ret;
	}

	return FUNC2(gmu, id, seqnum, payload, payload_size);
}