#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct st_fdma_dev {struct st_fdma_chan* chans; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct st_fdma_chan {TYPE_2__ vchan; TYPE_1__* fdesc; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_7__ {int /*<<< orphan*/  node; } ;
struct TYPE_5__ {TYPE_3__ vdesc; int /*<<< orphan*/  iscyclic; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_COMPLETE ; 
 int /*<<< orphan*/  FDMA_INT_CLR_OFST ; 
 unsigned long FDMA_INT_STA_CH ; 
 unsigned long FDMA_INT_STA_ERR ; 
 int /*<<< orphan*/  FDMA_INT_STA_OFST ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned long FUNC0 (struct st_fdma_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct st_fdma_dev*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct st_fdma_chan*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct st_fdma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct st_fdma_dev *fdev = dev_id;
	irqreturn_t ret = IRQ_NONE;
	struct st_fdma_chan *fchan = &fdev->chans[0];
	unsigned long int_sta, clr;

	int_sta = FUNC0(fdev, FDMA_INT_STA_OFST);
	clr = int_sta;

	for (; int_sta != 0 ; int_sta >>= 2, fchan++) {
		if (!(int_sta & (FDMA_INT_STA_CH | FDMA_INT_STA_ERR)))
			continue;

		FUNC3(&fchan->vchan.lock);
		FUNC5(fchan, int_sta);

		if (fchan->fdesc) {
			if (!fchan->fdesc->iscyclic) {
				FUNC2(&fchan->fdesc->vdesc.node);
				FUNC7(&fchan->fdesc->vdesc);
				fchan->fdesc = NULL;
				fchan->status = DMA_COMPLETE;
			} else {
				FUNC8(&fchan->fdesc->vdesc);
			}

			/* Start the next descriptor (if available) */
			if (!fchan->fdesc)
				FUNC6(fchan);
		}

		FUNC4(&fchan->vchan.lock);
		ret = IRQ_HANDLED;
	}

	FUNC1(fdev, clr, FDMA_INT_CLR_OFST);

	return ret;
}