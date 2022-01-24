#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ioatdma_chan {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; scalar_t__ phys; } ;
struct ioat_ring_ent {TYPE_2__ txd; TYPE_1__* sed; struct ioat_pq_descriptor* pq; } ;
typedef  void ioat_raw_descriptor ;
struct TYPE_6__ {int /*<<< orphan*/  src_cnt; scalar_t__ q_disable; scalar_t__ p_disable; int /*<<< orphan*/  compl_write; int /*<<< orphan*/  int_en; int /*<<< orphan*/  op; } ;
struct ioat_pq_descriptor {int /*<<< orphan*/  q_addr; int /*<<< orphan*/  p_addr; int /*<<< orphan*/ * coef; TYPE_3__ ctl_f; int /*<<< orphan*/  ctl; int /*<<< orphan*/  size; scalar_t__ next; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ioat_ring_ent*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 scalar_t__ FUNC2 (void**,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct device* FUNC4 (struct ioatdma_chan*) ; 

__attribute__((used)) static void FUNC5(struct ioatdma_chan *ioat_chan,
			       struct ioat_ring_ent *desc)
{
	struct device *dev = FUNC4(ioat_chan);
	struct ioat_pq_descriptor *pq = desc->pq;
	struct ioat_raw_descriptor *descs[] = { (void *)pq,
						(void *)pq,
						(void *)pq };
	int src_cnt = FUNC3(pq->ctl_f.src_cnt);
	int i;

	if (desc->sed) {
		descs[1] = (void *)desc->sed->hw;
		descs[2] = (void *)desc->sed->hw + 64;
	}

	FUNC1(dev, "desc[%d]: (%#llx->%#llx) flags: %#x"
		" sz: %#x ctl: %#x (op: %#x int: %d compl: %d pq: '%s%s'"
		" src_cnt: %d)\n",
		FUNC0(desc), (unsigned long long) desc->txd.phys,
		(unsigned long long) pq->next,
		desc->txd.flags, pq->size, pq->ctl,
		pq->ctl_f.op, pq->ctl_f.int_en,
		pq->ctl_f.compl_write,
		pq->ctl_f.p_disable ? "" : "p", pq->ctl_f.q_disable ? "" : "q",
		pq->ctl_f.src_cnt);
	for (i = 0; i < src_cnt; i++) {
		FUNC1(dev, "\tsrc[%d]: %#llx coef: %#x\n", i,
			(unsigned long long) FUNC2(descs, i),
			pq->coef[i]);
	}
	FUNC1(dev, "\tP: %#llx\n", pq->p_addr);
	FUNC1(dev, "\tQ: %#llx\n", pq->q_addr);
}