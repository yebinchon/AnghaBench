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
struct ipuv3_channel {TYPE_1__* ipu; int /*<<< orphan*/  num; } ;
struct ipu_prg_channel {int enabled; } ;
struct ipu_prg {int /*<<< orphan*/  dev; scalar_t__ regs; struct ipu_prg_channel* chan; } ;
struct TYPE_2__ {struct ipu_prg* prg_priv; } ;

/* Variables and functions */
 scalar_t__ IPU_PRG_CTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IPU_PRG_REG_UPDATE ; 
 int /*<<< orphan*/  IPU_PRG_REG_UPDATE_REG_UPDATE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_prg*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC7(struct ipuv3_channel *ipu_chan)
{
	int prg_chan = FUNC1(ipu_chan->num);
	struct ipu_prg *prg = ipu_chan->ipu->prg_priv;
	struct ipu_prg_channel *chan;
	u32 val;

	if (prg_chan < 0)
		return;

	chan = &prg->chan[prg_chan];
	if (!chan->enabled)
		return;

	FUNC3(prg->dev);

	val = FUNC5(prg->regs + IPU_PRG_CTL);
	val |= FUNC0(prg_chan);
	FUNC6(val, prg->regs + IPU_PRG_CTL);

	val = IPU_PRG_REG_UPDATE_REG_UPDATE;
	FUNC6(val, prg->regs + IPU_PRG_REG_UPDATE);

	FUNC4(prg->dev);

	FUNC2(prg, prg_chan);

	chan->enabled = false;
}