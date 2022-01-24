#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct virt_dma_desc {int /*<<< orphan*/  tx; int /*<<< orphan*/  node; } ;
struct edma_desc {int pset_nr; int processed; scalar_t__ cyclic; TYPE_3__* pset; scalar_t__ sg_len; } ;
struct TYPE_7__ {TYPE_1__* device; } ;
struct TYPE_9__ {TYPE_2__ chan; } ;
struct edma_chan {int /*<<< orphan*/  ch_num; scalar_t__ missed; struct edma_cc* ecc; int /*<<< orphan*/ * slot; struct edma_desc* edesc; TYPE_4__ vchan; } ;
struct edma_cc {int /*<<< orphan*/  dummy_slot; } ;
struct device {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  link_bcntrld; int /*<<< orphan*/  src_dst_cidx; int /*<<< orphan*/  src_dst_bidx; int /*<<< orphan*/  ccnt; int /*<<< orphan*/  a_b_cnt; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  opt; } ;
struct TYPE_8__ {TYPE_5__ param; scalar_t__ len; } ;
struct TYPE_6__ {struct device* dev; } ;

/* Variables and functions */
 int MAX_NR_SG ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct edma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct edma_cc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct edma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct edma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct edma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct edma_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct edma_cc*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int,int) ; 
 struct edma_desc* FUNC11 (int /*<<< orphan*/ *) ; 
 struct virt_dma_desc* FUNC12 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC13(struct edma_chan *echan)
{
	struct edma_cc *ecc = echan->ecc;
	struct virt_dma_desc *vdesc;
	struct edma_desc *edesc;
	struct device *dev = echan->vchan.chan.device->dev;
	int i, j, left, nslots;

	if (!echan->edesc) {
		/* Setup is needed for the first transfer */
		vdesc = FUNC12(&echan->vchan);
		if (!vdesc)
			return;
		FUNC9(&vdesc->node);
		echan->edesc = FUNC11(&vdesc->tx);
	}

	edesc = echan->edesc;

	/* Find out how many left */
	left = edesc->pset_nr - edesc->processed;
	nslots = FUNC10(MAX_NR_SG, left);
	edesc->sg_len = 0;

	/* Write descriptor PaRAM set(s) */
	for (i = 0; i < nslots; i++) {
		j = i + edesc->processed;
		FUNC8(ecc, echan->slot[i], &edesc->pset[j].param);
		edesc->sg_len += edesc->pset[j].len;
		FUNC1(dev,
			 "\n pset[%d]:\n"
			 "  chnum\t%d\n"
			 "  slot\t%d\n"
			 "  opt\t%08x\n"
			 "  src\t%08x\n"
			 "  dst\t%08x\n"
			 "  abcnt\t%08x\n"
			 "  ccnt\t%08x\n"
			 "  bidx\t%08x\n"
			 "  cidx\t%08x\n"
			 "  lkrld\t%08x\n",
			 j, echan->ch_num, echan->slot[i],
			 edesc->pset[j].param.opt,
			 edesc->pset[j].param.src,
			 edesc->pset[j].param.dst,
			 edesc->pset[j].param.a_b_cnt,
			 edesc->pset[j].param.ccnt,
			 edesc->pset[j].param.src_dst_bidx,
			 edesc->pset[j].param.src_dst_cidx,
			 edesc->pset[j].param.link_bcntrld);
		/* Link to the previous slot if not the last set */
		if (i != (nslots - 1))
			FUNC3(ecc, echan->slot[i], echan->slot[i + 1]);
	}

	edesc->processed += nslots;

	/*
	 * If this is either the last set in a set of SG-list transactions
	 * then setup a link to the dummy slot, this results in all future
	 * events being absorbed and that's OK because we're done
	 */
	if (edesc->processed == edesc->pset_nr) {
		if (edesc->cyclic)
			FUNC3(ecc, echan->slot[nslots - 1], echan->slot[1]);
		else
			FUNC3(ecc, echan->slot[nslots - 1],
				  echan->ecc->dummy_slot);
	}

	if (echan->missed) {
		/*
		 * This happens due to setup times between intermediate
		 * transfers in long SG lists which have to be broken up into
		 * transfers of MAX_NR_SG
		 */
		FUNC0(dev, "missed event on channel %d\n", echan->ch_num);
		FUNC2(echan);
		FUNC6(echan);
		FUNC5(echan);
		FUNC7(echan);
		echan->missed = 0;
	} else if (edesc->processed <= MAX_NR_SG) {
		FUNC0(dev, "first transfer starting on channel %d\n",
			echan->ch_num);
		FUNC5(echan);
	} else {
		FUNC0(dev, "chan: %d: completed %d elements, resuming\n",
			echan->ch_num, edesc->processed);
		FUNC4(echan);
	}
}