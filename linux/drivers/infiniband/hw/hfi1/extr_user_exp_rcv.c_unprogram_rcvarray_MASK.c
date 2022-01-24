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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct tid_rb_node {scalar_t__ rcventry; int /*<<< orphan*/  mmu; struct tid_group* grp; } ;
struct tid_group {int dummy; } ;
struct hfi1_filedata {int /*<<< orphan*/  handler; struct tid_rb_node** entry_to_rb; struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_devdata {int dummy; } ;
struct hfi1_ctxtdata {scalar_t__ expected_count; scalar_t__ expected_base; int /*<<< orphan*/  ctxt; struct hfi1_devdata* dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int EBADF ; 
 int EINVAL ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDX ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_filedata*,struct tid_rb_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hfi1_filedata *fd, u32 tidinfo,
			      struct tid_group **grp)
{
	struct hfi1_ctxtdata *uctxt = fd->uctxt;
	struct hfi1_devdata *dd = uctxt->dd;
	struct tid_rb_node *node;
	u8 tidctrl = FUNC0(tidinfo, CTRL);
	u32 tididx = FUNC0(tidinfo, IDX) << 1, rcventry;

	if (tididx >= uctxt->expected_count) {
		FUNC2(dd, "Invalid RcvArray entry (%u) index for ctxt %u\n",
			   tididx, uctxt->ctxt);
		return -EINVAL;
	}

	if (tidctrl == 0x3)
		return -EINVAL;

	rcventry = tididx + (tidctrl - 1);

	node = fd->entry_to_rb[rcventry];
	if (!node || node->rcventry != (uctxt->expected_base + rcventry))
		return -EBADF;

	if (grp)
		*grp = node->grp;

	if (!fd->handler)
		FUNC1(fd, node);
	else
		FUNC3(fd->handler, &node->mmu);

	return 0;
}