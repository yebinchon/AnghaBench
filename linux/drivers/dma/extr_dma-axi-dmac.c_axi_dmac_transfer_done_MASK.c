#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct axi_dmac_sg {scalar_t__ id; int schedule_when_free; scalar_t__ partial_len; } ;
struct TYPE_3__ {int /*<<< orphan*/  node; } ;
struct axi_dmac_desc {size_t num_completed; size_t num_sgs; TYPE_1__ vdesc; scalar_t__ cyclic; struct axi_dmac_sg* sg; } ;
struct axi_dmac_chan {scalar_t__ hw_partial_xfer; } ;

/* Variables and functions */
 unsigned int AXI_DMAC_FLAG_PARTIAL_XFER_DONE ; 
 scalar_t__ AXI_DMAC_SG_UNUSED ; 
 unsigned int FUNC0 (scalar_t__) ; 
 struct axi_dmac_desc* FUNC1 (struct axi_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct axi_dmac_chan*,struct axi_dmac_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct axi_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC7(struct axi_dmac_chan *chan,
	unsigned int completed_transfers)
{
	struct axi_dmac_desc *active;
	struct axi_dmac_sg *sg;
	bool start_next = false;

	active = FUNC1(chan);
	if (!active)
		return false;

	if (chan->hw_partial_xfer &&
	    (completed_transfers & AXI_DMAC_FLAG_PARTIAL_XFER_DONE))
		FUNC3(chan);

	do {
		sg = &active->sg[active->num_completed];
		if (sg->id == AXI_DMAC_SG_UNUSED) /* Not yet submitted */
			break;
		if (!(FUNC0(sg->id) & completed_transfers))
			break;
		active->num_completed++;
		sg->id = AXI_DMAC_SG_UNUSED;
		if (sg->schedule_when_free) {
			sg->schedule_when_free = false;
			start_next = true;
		}

		if (sg->partial_len)
			FUNC2(chan, active);

		if (active->cyclic)
			FUNC6(&active->vdesc);

		if (active->num_completed == active->num_sgs ||
		    sg->partial_len) {
			if (active->cyclic) {
				active->num_completed = 0; /* wrap around */
			} else {
				FUNC4(&active->vdesc.node);
				FUNC5(&active->vdesc);
				active = FUNC1(chan);
			}
		}
	} while (active);

	return start_next;
}