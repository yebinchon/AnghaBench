#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct virt_dma_desc {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  chan_id; } ;
struct TYPE_13__ {TYPE_5__ chan; } ;
struct st_fdma_chan {TYPE_6__ vchan; TYPE_4__* fdev; TYPE_7__* fdesc; } ;
struct TYPE_14__ {TYPE_2__* node; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; TYPE_3__* slim_rproc; } ;
struct TYPE_10__ {scalar_t__ peri; } ;
struct TYPE_9__ {unsigned long pdesc; TYPE_1__* desc; } ;
struct TYPE_8__ {unsigned long nbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FDMA_CH_CMD_OFST ; 
 unsigned long FDMA_CH_CMD_STA_START ; 
 scalar_t__ FDMA_CMD_SET_OFST ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FDMA_CNTN_OFST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct st_fdma_chan*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct st_fdma_chan*,unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC4 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct st_fdma_chan *fchan)
{
	struct virt_dma_desc *vdesc;
	unsigned long nbytes, ch_cmd, cmd;

	vdesc = FUNC5(&fchan->vchan);
	if (!vdesc)
		return;

	fchan->fdesc = FUNC4(vdesc);
	nbytes = fchan->fdesc->node[0].desc->nbytes;
	cmd = FUNC0(fchan->vchan.chan.chan_id);
	ch_cmd = fchan->fdesc->node[0].pdesc | FDMA_CH_CMD_STA_START;

	/* start the channel for the descriptor */
	FUNC3(fchan, nbytes, FDMA_CNTN_OFST);
	FUNC2(fchan, ch_cmd, FDMA_CH_CMD_OFST);
	FUNC6(cmd,
		fchan->fdev->slim_rproc->peri + FDMA_CMD_SET_OFST);

	FUNC1(fchan->fdev->dev, "start chan:%d\n", fchan->vchan.chan.chan_id);
}