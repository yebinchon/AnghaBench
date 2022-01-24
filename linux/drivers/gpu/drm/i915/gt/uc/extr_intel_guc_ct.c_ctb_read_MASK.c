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
typedef  size_t u32 ;
struct intel_guc_ct_buffer {size_t* cmds; struct guc_ct_buffer_desc* desc; } ;
struct guc_ct_buffer_desc {int head; int tail; int size; } ;
typedef  size_t s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,size_t*,int,size_t*,int,size_t*) ; 
 int ENODATA ; 
 int EPROTO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct intel_guc_ct_buffer *ctb, u32 *data)
{
	struct guc_ct_buffer_desc *desc = ctb->desc;
	u32 head = desc->head / 4;	/* in dwords */
	u32 tail = desc->tail / 4;	/* in dwords */
	u32 size = desc->size / 4;	/* in dwords */
	u32 *cmds = ctb->cmds;
	s32 available;			/* in dwords */
	unsigned int len;
	unsigned int i;

	FUNC2(desc->size % 4);
	FUNC2(desc->head % 4);
	FUNC2(desc->tail % 4);
	FUNC2(tail >= size);
	FUNC2(head >= size);

	/* tail == head condition indicates empty */
	available = tail - head;
	if (FUNC4(available == 0))
		return -ENODATA;

	/* beware of buffer wrap case */
	if (FUNC4(available < 0))
		available += size;
	FUNC0("CT: available %d (%u:%u)\n", available, head, tail);
	FUNC2(available < 0);

	data[0] = cmds[head];
	head = (head + 1) % size;

	/* message len with header */
	len = FUNC3(data[0]) + 1;
	if (FUNC4(len > (u32)available)) {
		FUNC1("CT: incomplete message %*ph %*ph %*ph\n",
			  4, data,
			  4 * (head + available - 1 > size ?
			       size - head : available - 1), &cmds[head],
			  4 * (head + available - 1 > size ?
			       available - 1 - size + head : 0), &cmds[0]);
		return -EPROTO;
	}

	for (i = 1; i < len; i++) {
		data[i] = cmds[head];
		head = (head + 1) % size;
	}
	FUNC0("CT: received %*ph\n", 4 * len, data);

	desc->head = head * 4;
	return 0;
}