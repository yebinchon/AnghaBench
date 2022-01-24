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
struct omap_ssi_port {int /*<<< orphan*/  pdev; int /*<<< orphan*/  wk_lock; scalar_t__ wk_refcount; } ;
struct omap_ssi_controller {scalar_t__ sys; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct hsi_port {int /*<<< orphan*/  num; TYPE_1__ device; } ;
struct hsi_controller {int dummy; } ;
struct hsi_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,scalar_t__) ; 
 struct omap_ssi_controller* FUNC4 (struct hsi_controller*) ; 
 struct hsi_port* FUNC5 (struct hsi_client*) ; 
 struct omap_ssi_port* FUNC6 (struct hsi_port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct hsi_controller* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct hsi_client *cl)
{
	struct hsi_port *port = FUNC5(cl);
	struct omap_ssi_port *omap_port = FUNC6(port);
	struct hsi_controller *ssi = FUNC11(port->device.parent);
	struct omap_ssi_controller *omap_ssi = FUNC4(ssi);

	FUNC3(&port->device, "Wake out low %d\n", omap_port->wk_refcount);

	FUNC9(&omap_port->wk_lock);
	FUNC0(!omap_port->wk_refcount);
	if (--omap_port->wk_refcount) {
		FUNC10(&omap_port->wk_lock);
		return 0;
	}
	FUNC12(FUNC2(0), omap_ssi->sys + FUNC1(port->num));
	FUNC10(&omap_port->wk_lock);

	FUNC7(omap_port->pdev);
	FUNC8(omap_port->pdev); /* Release clocks */


	return 0;
}