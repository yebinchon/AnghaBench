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
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct snd_dw_hdmi {int /*<<< orphan*/  lock; struct snd_pcm_substream* substream; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ HDMI_IH_AHBDMAAUD_STAT0 ; 
 unsigned int HDMI_IH_AHBDMAAUD_STAT0_DONE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_dw_hdmi*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct snd_dw_hdmi *dw = data;
	struct snd_pcm_substream *substream;
	unsigned stat;

	stat = FUNC1(dw->data.base + HDMI_IH_AHBDMAAUD_STAT0);
	if (!stat)
		return IRQ_NONE;

	FUNC5(stat, dw->data.base + HDMI_IH_AHBDMAAUD_STAT0);

	substream = dw->substream;
	if (stat & HDMI_IH_AHBDMAAUD_STAT0_DONE && substream) {
		FUNC2(substream);

		FUNC3(&dw->lock);
		if (dw->substream)
			FUNC0(dw);
		FUNC4(&dw->lock);
	}

	return IRQ_HANDLED;
}