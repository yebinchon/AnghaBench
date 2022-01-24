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
struct dvb_ca_slot {int slot_state; int da_irq_supported; } ;
struct dvb_ca_private {int /*<<< orphan*/  open; TYPE_1__* pub; struct dvb_ca_slot* slot_info; } ;
struct dvb_ca_en50221 {struct dvb_ca_private* private; } ;
struct TYPE_2__ {int (* read_cam_control ) (struct dvb_ca_en50221*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CTRLIF_STATUS ; 
#define  DVB_CA_SLOTSTATE_LINKINIT 129 
#define  DVB_CA_SLOTSTATE_RUNNING 128 
 int STATUSREG_DA ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_ca_private*) ; 
 int FUNC2 (struct dvb_ca_en50221*,int,int /*<<< orphan*/ ) ; 

void FUNC3(struct dvb_ca_en50221 *pubca, int slot)
{
	struct dvb_ca_private *ca = pubca->private;
	struct dvb_ca_slot *sl = &ca->slot_info[slot];
	int flags;

	FUNC0("FR/DA IRQ slot:%i\n", slot);

	switch (sl->slot_state) {
	case DVB_CA_SLOTSTATE_LINKINIT:
		flags = ca->pub->read_cam_control(pubca, slot, CTRLIF_STATUS);
		if (flags & STATUSREG_DA) {
			FUNC0("CAM supports DA IRQ\n");
			sl->da_irq_supported = 1;
		}
		break;

	case DVB_CA_SLOTSTATE_RUNNING:
		if (ca->open)
			FUNC1(ca);
		break;
	}
}