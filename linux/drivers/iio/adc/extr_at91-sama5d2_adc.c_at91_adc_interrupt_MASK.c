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
typedef  int u32 ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
struct TYPE_3__ {scalar_t__ dma_chan; } ;
struct at91_adc_state {int conversion_done; int /*<<< orphan*/  wq_data_available; TYPE_2__* chan; void* conversion_value; TYPE_1__ dma_st; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int AT91_SAMA5D2_IER_NOPEN ; 
 int AT91_SAMA5D2_IER_PEN ; 
 int AT91_SAMA5D2_IER_PRDY ; 
 int AT91_SAMA5D2_IER_XRDY ; 
 int AT91_SAMA5D2_IER_YRDY ; 
 int /*<<< orphan*/  AT91_SAMA5D2_IMR ; 
 int /*<<< orphan*/  AT91_SAMA5D2_ISR ; 
 int AT91_SAMA5D2_ISR_PENS ; 
 int /*<<< orphan*/  AT91_SAMA5D2_PRESSR ; 
 int /*<<< orphan*/  AT91_SAMA5D2_XPOSR ; 
 int /*<<< orphan*/  AT91_SAMA5D2_YPOSR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct at91_adc_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct at91_adc_state*) ; 
 void* FUNC3 (struct at91_adc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct iio_dev*) ; 
 struct at91_adc_state* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *private)
{
	struct iio_dev *indio = private;
	struct at91_adc_state *st = FUNC7(indio);
	u32 status = FUNC3(st, AT91_SAMA5D2_ISR);
	u32 imr = FUNC3(st, AT91_SAMA5D2_IMR);
	u32 rdy_mask = AT91_SAMA5D2_IER_XRDY | AT91_SAMA5D2_IER_YRDY |
			AT91_SAMA5D2_IER_PRDY;

	if (!(status & imr))
		return IRQ_NONE;
	if (status & AT91_SAMA5D2_IER_PEN) {
		/* pen detected IRQ */
		FUNC2(st);
	} else if ((status & AT91_SAMA5D2_IER_NOPEN)) {
		/* nopen detected IRQ */
		FUNC1(st);
	} else if ((status & AT91_SAMA5D2_ISR_PENS) &&
		   ((status & rdy_mask) == rdy_mask)) {
		/* periodic trigger IRQ - during pen sense */
		FUNC4(indio);
	} else if (status & AT91_SAMA5D2_ISR_PENS) {
		/*
		 * touching, but the measurements are not ready yet.
		 * read and ignore.
		 */
		status = FUNC3(st, AT91_SAMA5D2_XPOSR);
		status = FUNC3(st, AT91_SAMA5D2_YPOSR);
		status = FUNC3(st, AT91_SAMA5D2_PRESSR);
	} else if (FUNC6(indio) && !st->dma_st.dma_chan) {
		/* triggered buffer without DMA */
		FUNC5(irq);
		FUNC8(indio->trig);
	} else if (FUNC6(indio) && st->dma_st.dma_chan) {
		/* triggered buffer with DMA - should not happen */
		FUNC5(irq);
		FUNC0(true, "Unexpected irq occurred\n");
	} else if (!FUNC6(indio)) {
		/* software requested conversion */
		st->conversion_value = FUNC3(st, st->chan->address);
		st->conversion_done = true;
		FUNC9(&st->wq_data_available);
	}
	return IRQ_HANDLED;
}