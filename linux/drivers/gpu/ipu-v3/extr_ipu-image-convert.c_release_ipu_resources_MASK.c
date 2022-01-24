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
struct ipu_image_convert_chan {int out_eof_irq; int rot_out_eof_irq; int /*<<< orphan*/ * rotation_out_chan; int /*<<< orphan*/ * rotation_in_chan; int /*<<< orphan*/ * out_chan; int /*<<< orphan*/ * in_chan; int /*<<< orphan*/ * ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct ipu_image_convert_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ipu_image_convert_chan *chan)
{
	if (chan->out_eof_irq >= 0)
		FUNC1(chan->out_eof_irq, chan);
	if (chan->rot_out_eof_irq >= 0)
		FUNC1(chan->rot_out_eof_irq, chan);

	if (!FUNC0(chan->in_chan))
		FUNC3(chan->in_chan);
	if (!FUNC0(chan->out_chan))
		FUNC3(chan->out_chan);
	if (!FUNC0(chan->rotation_in_chan))
		FUNC3(chan->rotation_in_chan);
	if (!FUNC0(chan->rotation_out_chan))
		FUNC3(chan->rotation_out_chan);
	if (!FUNC0(chan->ic))
		FUNC2(chan->ic);

	chan->in_chan = chan->out_chan = chan->rotation_in_chan =
		chan->rotation_out_chan = NULL;
	chan->out_eof_irq = chan->rot_out_eof_irq = -1;
}