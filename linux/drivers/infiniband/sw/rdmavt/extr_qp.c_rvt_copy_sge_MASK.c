#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct rvt_wss {int dummy; } ;
struct rvt_sge {scalar_t__ vaddr; } ;
struct rvt_sge_state {struct rvt_sge sge; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct rvt_qp {TYPE_1__ ibqp; } ;
struct TYPE_4__ {unsigned int sge_copy_mode; } ;
struct rvt_dev_info {TYPE_2__ dparms; struct rvt_wss* wss; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 unsigned int RVT_SGE_COPY_ADAPTIVE ; 
 unsigned int RVT_SGE_COPY_CACHELESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void*,int) ; 
 struct rvt_dev_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void*,int) ; 
 int FUNC4 (struct rvt_sge*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rvt_sge_state*,int,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct rvt_wss*) ; 
 int FUNC8 (struct rvt_wss*) ; 
 int /*<<< orphan*/  FUNC9 (struct rvt_wss*,scalar_t__) ; 

void FUNC10(struct rvt_qp *qp, struct rvt_sge_state *ss,
		  void *data, u32 length,
		  bool release, bool copy_last)
{
	struct rvt_sge *sge = &ss->sge;
	int i;
	bool in_last = false;
	bool cacheless_copy = false;
	struct rvt_dev_info *rdi = FUNC2(qp->ibqp.device);
	struct rvt_wss *wss = rdi->wss;
	unsigned int sge_copy_mode = rdi->dparms.sge_copy_mode;

	if (sge_copy_mode == RVT_SGE_COPY_CACHELESS) {
		cacheless_copy = length >= PAGE_SIZE;
	} else if (sge_copy_mode == RVT_SGE_COPY_ADAPTIVE) {
		if (length >= PAGE_SIZE) {
			/*
			 * NOTE: this *assumes*:
			 * o The first vaddr is the dest.
			 * o If multiple pages, then vaddr is sequential.
			 */
			FUNC9(wss, sge->vaddr);
			if (length >= (2 * PAGE_SIZE))
				FUNC9(wss, (sge->vaddr + PAGE_SIZE));

			cacheless_copy = FUNC8(wss);
		} else {
			FUNC7(wss);
		}
	}

	if (copy_last) {
		if (length > 8) {
			length -= 8;
		} else {
			copy_last = false;
			in_last = true;
		}
	}

again:
	while (length) {
		u32 len = FUNC4(sge, length);

		FUNC0(len == 0);
		if (FUNC6(in_last)) {
			/* enforce byte transfer ordering */
			for (i = 0; i < len; i++)
				((u8 *)sge->vaddr)[i] = ((u8 *)data)[i];
		} else if (cacheless_copy) {
			FUNC1(sge->vaddr, data, len);
		} else {
			FUNC3(sge->vaddr, data, len);
		}
		FUNC5(ss, len, release);
		data += len;
		length -= len;
	}

	if (copy_last) {
		copy_last = false;
		in_last = true;
		length = 8;
		goto again;
	}
}