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
struct imx_dsp_ipc {struct imx_dsp_chan* chans; } ;
struct imx_dsp_chan {int /*<<< orphan*/  ch; } ;

/* Variables and functions */
 unsigned int DSP_MU_CHAN_NUM ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(struct imx_dsp_ipc *ipc, unsigned int idx)
{
	int ret;
	struct imx_dsp_chan *dsp_chan;

	if (idx >= DSP_MU_CHAN_NUM)
		return -EINVAL;

	dsp_chan = &ipc->chans[idx];
	ret = FUNC0(dsp_chan->ch, NULL);
	if (ret < 0)
		return ret;

	return 0;
}