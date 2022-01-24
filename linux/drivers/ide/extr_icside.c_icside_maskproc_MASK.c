#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct icside_state {int channel; scalar_t__ irq_port; scalar_t__ enabled; } ;
struct expansion_card {int dummy; } ;
struct TYPE_4__ {int channel; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 struct expansion_card* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ICS_ARCIN_V6_INTROFFSET_1 ; 
 scalar_t__ ICS_ARCIN_V6_INTROFFSET_2 ; 
 struct icside_state* FUNC1 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(ide_drive_t *drive, int mask)
{
	ide_hwif_t *hwif = drive->hwif;
	struct expansion_card *ec = FUNC0(hwif->dev);
	struct icside_state *state = FUNC1(ec);
	unsigned long flags;

	FUNC3(flags);

	state->channel = hwif->channel;

	if (state->enabled && !mask) {
		switch (hwif->channel) {
		case 0:
			FUNC5(0, state->irq_port + ICS_ARCIN_V6_INTROFFSET_1);
			FUNC4(state->irq_port + ICS_ARCIN_V6_INTROFFSET_2);
			break;
		case 1:
			FUNC5(0, state->irq_port + ICS_ARCIN_V6_INTROFFSET_2);
			FUNC4(state->irq_port + ICS_ARCIN_V6_INTROFFSET_1);
			break;
		}
	} else {
		FUNC4(state->irq_port + ICS_ARCIN_V6_INTROFFSET_2);
		FUNC4(state->irq_port + ICS_ARCIN_V6_INTROFFSET_1);
	}

	FUNC2(flags);
}