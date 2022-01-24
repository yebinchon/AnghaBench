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
typedef  size_t u32 ;
struct fsl_edma_hw_tcd {int /*<<< orphan*/  csr; int /*<<< orphan*/  dlast_sga; int /*<<< orphan*/  doff; int /*<<< orphan*/  biter; int /*<<< orphan*/  citer; int /*<<< orphan*/  slast; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  soff; int /*<<< orphan*/  attr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct edma_regs {TYPE_3__* tcd; } ;
struct fsl_edma_engine {struct edma_regs regs; } ;
struct TYPE_4__ {size_t chan_id; } ;
struct TYPE_5__ {TYPE_1__ chan; } ;
struct fsl_edma_chan {TYPE_2__ vchan; struct fsl_edma_engine* edma; } ;
struct TYPE_6__ {int /*<<< orphan*/  csr; int /*<<< orphan*/  dlast_sga; int /*<<< orphan*/  doff; int /*<<< orphan*/  biter; int /*<<< orphan*/  citer; int /*<<< orphan*/  slast; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  soff; int /*<<< orphan*/  attr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsl_edma_engine*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_edma_engine*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fsl_edma_chan *fsl_chan,
				  struct fsl_edma_hw_tcd *tcd)
{
	struct fsl_edma_engine *edma = fsl_chan->edma;
	struct edma_regs *regs = &fsl_chan->edma->regs;
	u32 ch = fsl_chan->vchan.chan.chan_id;

	/*
	 * TCD parameters are stored in struct fsl_edma_hw_tcd in little
	 * endian format. However, we need to load the TCD registers in
	 * big- or little-endian obeying the eDMA engine model endian.
	 */
	FUNC1(edma, 0,  &regs->tcd[ch].csr);
	FUNC0(edma, FUNC3(tcd->saddr), &regs->tcd[ch].saddr);
	FUNC0(edma, FUNC3(tcd->daddr), &regs->tcd[ch].daddr);

	FUNC1(edma, FUNC2(tcd->attr), &regs->tcd[ch].attr);
	FUNC1(edma, FUNC2(tcd->soff), &regs->tcd[ch].soff);

	FUNC0(edma, FUNC3(tcd->nbytes), &regs->tcd[ch].nbytes);
	FUNC0(edma, FUNC3(tcd->slast), &regs->tcd[ch].slast);

	FUNC1(edma, FUNC2(tcd->citer), &regs->tcd[ch].citer);
	FUNC1(edma, FUNC2(tcd->biter), &regs->tcd[ch].biter);
	FUNC1(edma, FUNC2(tcd->doff), &regs->tcd[ch].doff);

	FUNC0(edma, FUNC3(tcd->dlast_sga),
			&regs->tcd[ch].dlast_sga);

	FUNC1(edma, FUNC2(tcd->csr), &regs->tcd[ch].csr);
}