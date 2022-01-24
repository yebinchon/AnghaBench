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
struct TYPE_2__ {int /*<<< orphan*/  divisor; } ;
struct omap_ssi_port {TYPE_1__ sst; } ;
struct hsi_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hsi_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_ssi_port*) ; 

void FUNC2(struct hsi_controller *ssi,
			       struct omap_ssi_port *omap_port)
{
	/* update divisor */
	u32 div = FUNC0(ssi);
	omap_port->sst.divisor = div;
	FUNC1(omap_port);
}