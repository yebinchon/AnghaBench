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
struct panel_drv_data {int /*<<< orphan*/  hpd_lock; int /*<<< orphan*/  hpd_cb_data; int /*<<< orphan*/  (* hpd_cb ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  dssdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct panel_drv_data *ddata = data;

	FUNC1(&ddata->hpd_lock);
	if (ddata->hpd_cb) {
		enum drm_connector_status status;

		if (FUNC0(&ddata->dssdev))
			status = connector_status_connected;
		else
			status = connector_status_disconnected;

		ddata->hpd_cb(ddata->hpd_cb_data, status);
	}
	FUNC2(&ddata->hpd_lock);

	return IRQ_HANDLED;
}