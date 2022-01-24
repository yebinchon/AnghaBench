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
typedef  int /*<<< orphan*/  u32 ;
struct intel_guc_ct_channel {int /*<<< orphan*/  enabled; struct intel_guc_ct_buffer* ctbs; } ;
struct intel_guc_ct_buffer {TYPE_1__* desc; } ;
struct intel_guc_ct {struct intel_guc_ct_channel host_channel; } ;
struct TYPE_2__ {int is_in_error; } ;

/* Variables and functions */
 size_t CTB_RECV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EPROTO ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  GUC_CT_MSG_LEN_MASK ; 
 int FUNC2 (struct intel_guc_ct*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct intel_guc_ct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct intel_guc_ct_buffer*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct intel_guc_ct *ct)
{
	struct intel_guc_ct_channel *ctch = &ct->host_channel;
	struct intel_guc_ct_buffer *ctb = &ctch->ctbs[CTB_RECV];
	u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the header */
	int err = 0;

	if (!ctch->enabled)
		return;

	do {
		err = FUNC5(ctb, msg);
		if (err)
			break;

		if (FUNC4(msg[0]))
			err = FUNC3(ct, msg);
		else
			err = FUNC2(ct, msg);
	} while (!err);

	if (FUNC1(err == -EPROTO)) {
		FUNC0("CT: corrupted message detected!\n");
		ctb->desc->is_in_error = 1;
	}
}