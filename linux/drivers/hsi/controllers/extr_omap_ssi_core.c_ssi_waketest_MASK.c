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
struct omap_ssi_port {int wktest; } ;
struct omap_ssi_controller {scalar_t__ sys; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct hsi_port {int /*<<< orphan*/  num; TYPE_2__ device; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct hsi_controller {TYPE_1__ device; } ;
struct hsi_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct omap_ssi_controller* FUNC3 (struct hsi_controller*) ; 
 struct hsi_port* FUNC4 (struct hsi_client*) ; 
 struct omap_ssi_port* FUNC5 (struct hsi_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct hsi_controller* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC10(struct hsi_client *cl, unsigned int enable)
{
	struct hsi_port *port = FUNC4(cl);
	struct omap_ssi_port *omap_port = FUNC5(port);
	struct hsi_controller *ssi = FUNC8(port->device.parent);
	struct omap_ssi_controller *omap_ssi = FUNC3(ssi);

	omap_port->wktest = !!enable;
	if (omap_port->wktest) {
		FUNC6(ssi->device.parent);
		FUNC9(FUNC2(0),
				omap_ssi->sys + FUNC1(port->num));
	} else {
		FUNC9(FUNC2(0),
				omap_ssi->sys +	FUNC0(port->num));
		FUNC7(ssi->device.parent);
	}
}