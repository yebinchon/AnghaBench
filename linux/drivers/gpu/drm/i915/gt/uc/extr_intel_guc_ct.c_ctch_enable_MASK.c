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
typedef  scalar_t__ u32 ;
struct intel_guc_ct_channel {int enabled; int /*<<< orphan*/  owner; TYPE_1__* ctbs; int /*<<< orphan*/  vma; } ;
struct intel_guc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int CTB_RECV ; 
 int CTB_SEND ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  INTEL_GUC_CT_BUFFER_TYPE_RECV ; 
 int /*<<< orphan*/  INTEL_GUC_CT_BUFFER_TYPE_SEND ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct intel_guc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct intel_guc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct intel_guc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct intel_guc *guc,
		       struct intel_guc_ct_channel *ctch)
{
	u32 base;
	int err;
	int i;

	FUNC2(!ctch->vma);

	FUNC2(ctch->enabled);

	/* vma should be already allocated and map'ed */
	base = FUNC6(guc, ctch->vma);

	/* (re)initialize descriptors
	 * cmds buffers are in the second half of the blob page
	 */
	for (i = 0; i < FUNC0(ctch->ctbs); i++) {
		FUNC2((i != CTB_SEND) && (i != CTB_RECV));
		FUNC5(ctch->ctbs[i].desc,
					base + PAGE_SIZE/4 * i + PAGE_SIZE/2,
					PAGE_SIZE/4,
					ctch->owner);
	}

	/* register buffers, starting wirh RECV buffer
	 * descriptors are in first half of the blob
	 */
	err = FUNC4(guc,
					    base + PAGE_SIZE/4 * CTB_RECV,
					    INTEL_GUC_CT_BUFFER_TYPE_RECV);
	if (FUNC7(err))
		goto err_out;

	err = FUNC4(guc,
					    base + PAGE_SIZE/4 * CTB_SEND,
					    INTEL_GUC_CT_BUFFER_TYPE_SEND);
	if (FUNC7(err))
		goto err_deregister;

	ctch->enabled = true;

	return 0;

err_deregister:
	FUNC3(guc,
					ctch->owner,
					INTEL_GUC_CT_BUFFER_TYPE_RECV);
err_out:
	FUNC1("CT: can't open channel %d; err=%d\n", ctch->owner, err);
	return err;
}