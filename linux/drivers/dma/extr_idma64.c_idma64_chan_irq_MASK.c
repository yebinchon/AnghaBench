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
typedef  int u32 ;
struct idma64_desc {scalar_t__ status; int /*<<< orphan*/  vdesc; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct idma64_chan {TYPE_1__ vchan; struct idma64_desc* desc; int /*<<< orphan*/  mask; } ;
struct idma64 {struct idma64_chan* chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DMA_COMPLETE ; 
 scalar_t__ DMA_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  XFER ; 
 int /*<<< orphan*/  FUNC1 (struct idma64*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct idma64_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct idma64_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct idma64 *idma64, unsigned short c,
		u32 status_err, u32 status_xfer)
{
	struct idma64_chan *idma64c = &idma64->chan[c];
	struct idma64_desc *desc;

	FUNC4(&idma64c->vchan.lock);
	desc = idma64c->desc;
	if (desc) {
		if (status_err & (1 << c)) {
			FUNC1(idma64, FUNC0(ERROR), idma64c->mask);
			desc->status = DMA_ERROR;
		} else if (status_xfer & (1 << c)) {
			FUNC1(idma64, FUNC0(XFER), idma64c->mask);
			desc->status = DMA_COMPLETE;
			FUNC6(&desc->vdesc);
			FUNC2(idma64c);
		}

		/* idma64_start_transfer() updates idma64c->desc */
		if (idma64c->desc == NULL || desc->status == DMA_ERROR)
			FUNC3(idma64c);
	}
	FUNC5(&idma64c->vchan.lock);
}