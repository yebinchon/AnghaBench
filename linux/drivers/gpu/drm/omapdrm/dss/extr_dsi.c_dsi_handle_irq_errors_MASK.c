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
typedef  int u32 ;
struct dsi_data {int errors; int /*<<< orphan*/  errors_lock; } ;

/* Variables and functions */
 int DSI_CIO_IRQ_ERROR_MASK ; 
 int DSI_IRQ_ERROR_MASK ; 
 int DSI_VC_IRQ_ERROR_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ debug_irq ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct dsi_data *dsi, u32 irqstatus,
				  u32 *vcstatus, u32 ciostatus)
{
	int i;

	if (irqstatus & DSI_IRQ_ERROR_MASK) {
		FUNC0("DSI error, irqstatus %x\n", irqstatus);
		FUNC1(irqstatus);
		FUNC4(&dsi->errors_lock);
		dsi->errors |= irqstatus & DSI_IRQ_ERROR_MASK;
		FUNC5(&dsi->errors_lock);
	} else if (debug_irq) {
		FUNC1(irqstatus);
	}

	for (i = 0; i < 4; ++i) {
		if (vcstatus[i] & DSI_VC_IRQ_ERROR_MASK) {
			FUNC0("DSI VC(%d) error, vc irqstatus %x\n",
				       i, vcstatus[i]);
			FUNC3(i, vcstatus[i]);
		} else if (debug_irq) {
			FUNC3(i, vcstatus[i]);
		}
	}

	if (ciostatus & DSI_CIO_IRQ_ERROR_MASK) {
		FUNC0("DSI CIO error, cio irqstatus %x\n", ciostatus);
		FUNC2(ciostatus);
	} else if (debug_irq) {
		FUNC2(ciostatus);
	}
}