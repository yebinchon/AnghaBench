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
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct brcm_sba_command {int flags; int /*<<< orphan*/  data_len; int /*<<< orphan*/  data; int /*<<< orphan*/  cmd; int /*<<< orphan*/  resp_len; int /*<<< orphan*/  resp; } ;
struct TYPE_2__ {size_t cmds_count; struct brcm_sba_command* cmds; } ;
struct brcm_message {TYPE_1__ sba; } ;

/* Variables and functions */
 int BRCM_SBA_CMD_HAS_OUTPUT ; 
 int BRCM_SBA_CMD_HAS_RESP ; 
 int BRCM_SBA_CMD_TYPE_B ; 
 int BRCM_SBA_CMD_TYPE_C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t,size_t,int /*<<< orphan*/ ,void**,size_t*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void *FUNC10(struct brcm_message *msg, u32 nhcnt,
				     u32 reqid, void *desc_ptr, u32 toggle,
				     void *start_desc, void *end_desc)
{
	u64 d;
	u32 i, nhpos = 0;
	struct brcm_sba_command *c;
	void *orig_desc_ptr = desc_ptr;

	/* Convert SBA commands into descriptors */
	for (i = 0; i < msg->sba.cmds_count; i++) {
		c = &msg->sba.cmds[i];

		if ((c->flags & BRCM_SBA_CMD_HAS_RESP) &&
		    (c->flags & BRCM_SBA_CMD_HAS_OUTPUT)) {
			/* Destination response descriptor */
			d = FUNC0(c->resp, c->resp_len);
			FUNC2(nhpos, nhcnt, reqid,
					     d, &desc_ptr, &toggle,
					     start_desc, end_desc);
			nhpos++;
		} else if (c->flags & BRCM_SBA_CMD_HAS_RESP) {
			/* Destination response with tlast descriptor */
			d = FUNC1(c->resp, c->resp_len);
			FUNC2(nhpos, nhcnt, reqid,
					     d, &desc_ptr, &toggle,
					     start_desc, end_desc);
			nhpos++;
		}

		if (c->flags & BRCM_SBA_CMD_HAS_OUTPUT) {
			/* Destination with tlast descriptor */
			d = FUNC1(c->data, c->data_len);
			FUNC2(nhpos, nhcnt, reqid,
					     d, &desc_ptr, &toggle,
					     start_desc, end_desc);
			nhpos++;
		}

		if (c->flags & BRCM_SBA_CMD_TYPE_B) {
			/* Command as immediate descriptor */
			d = FUNC4(c->cmd);
			FUNC2(nhpos, nhcnt, reqid,
					     d, &desc_ptr, &toggle,
					     start_desc, end_desc);
			nhpos++;
		} else {
			/* Command as immediate descriptor with tlast */
			d = FUNC5(c->cmd);
			FUNC2(nhpos, nhcnt, reqid,
					     d, &desc_ptr, &toggle,
					     start_desc, end_desc);
			nhpos++;
		}

		if ((c->flags & BRCM_SBA_CMD_TYPE_B) ||
		    (c->flags & BRCM_SBA_CMD_TYPE_C)) {
			/* Source with tlast descriptor */
			d = FUNC7(c->data, c->data_len);
			FUNC2(nhpos, nhcnt, reqid,
					     d, &desc_ptr, &toggle,
					     start_desc, end_desc);
			nhpos++;
		}
	}

	/* Null descriptor with invalid toggle bit */
	FUNC8(desc_ptr, FUNC6(!toggle));

	/* Ensure that descriptors have been written to memory */
	FUNC9();

	/* Flip toggle bit in header */
	FUNC3(orig_desc_ptr);

	return desc_ptr;
}