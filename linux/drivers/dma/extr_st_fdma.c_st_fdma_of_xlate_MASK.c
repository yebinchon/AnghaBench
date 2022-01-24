#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* dev; } ;
struct st_fdma_dev {TYPE_3__* slim_rproc; int /*<<< orphan*/  dev; TYPE_4__ dma_device; } ;
struct TYPE_6__ {scalar_t__ of_node; int req_line; int req_ctrl; int type; } ;
struct st_fdma_chan {int dreq_line; TYPE_2__ cfg; } ;
struct of_phandle_args {int args_count; scalar_t__ np; int* args; } ;
struct of_dma {struct st_fdma_dev* of_dma_data; } ;
struct dma_chan {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  rproc; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EPROBE_DEFER ; 
 struct dma_chan* FUNC0 (int) ; 
 int FDMA_REQ_CTRL_CFG_MASK ; 
 scalar_t__ FUNC1 (int) ; 
 int ST_FDMA_TYPE_FREE_RUN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 struct dma_chan* FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct st_fdma_chan*) ; 
 struct st_fdma_chan* FUNC7 (struct dma_chan*) ; 

__attribute__((used)) static struct dma_chan *FUNC8(struct of_phandle_args *dma_spec,
					 struct of_dma *ofdma)
{
	struct st_fdma_dev *fdev = ofdma->of_dma_data;
	struct dma_chan *chan;
	struct st_fdma_chan *fchan;
	int ret;

	if (dma_spec->args_count < 1)
		return FUNC0(-EINVAL);

	if (fdev->dma_device.dev->of_node != dma_spec->np)
		return FUNC0(-EINVAL);

	ret = FUNC4(fdev->slim_rproc->rproc);
	if (ret == -ENOENT)
		return FUNC0(-EPROBE_DEFER);
	else if (ret)
		return FUNC0(ret);

	chan = FUNC3(&fdev->dma_device);
	if (!chan)
		goto err_chan;

	fchan = FUNC7(chan);

	fchan->cfg.of_node = dma_spec->np;
	fchan->cfg.req_line = dma_spec->args[0];
	fchan->cfg.req_ctrl = 0;
	fchan->cfg.type = ST_FDMA_TYPE_FREE_RUN;

	if (dma_spec->args_count > 1)
		fchan->cfg.req_ctrl = dma_spec->args[1]
			& FDMA_REQ_CTRL_CFG_MASK;

	if (dma_spec->args_count > 2)
		fchan->cfg.type = dma_spec->args[2];

	if (fchan->cfg.type == ST_FDMA_TYPE_FREE_RUN) {
		fchan->dreq_line = 0;
	} else {
		fchan->dreq_line = FUNC6(fchan);
		if (FUNC1(fchan->dreq_line)) {
			chan = FUNC0(fchan->dreq_line);
			goto err_chan;
		}
	}

	FUNC2(fdev->dev, "xlate req_line:%d type:%d req_ctrl:%#lx\n",
		fchan->cfg.req_line, fchan->cfg.type, fchan->cfg.req_ctrl);

	return chan;

err_chan:
	FUNC5(fdev->slim_rproc->rproc);
	return chan;

}