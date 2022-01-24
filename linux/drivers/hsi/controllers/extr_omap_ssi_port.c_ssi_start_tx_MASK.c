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
struct omap_ssi_port {int /*<<< orphan*/  work; int /*<<< orphan*/  wk_lock; int /*<<< orphan*/  wk_refcount; } ;
struct hsi_port {int /*<<< orphan*/  device; } ;
struct hsi_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct hsi_port* FUNC1 (struct hsi_client*) ; 
 struct omap_ssi_port* FUNC2 (struct hsi_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hsi_client *cl)
{
	struct hsi_port *port = FUNC1(cl);
	struct omap_ssi_port *omap_port = FUNC2(port);

	FUNC0(&port->device, "Wake out high %d\n", omap_port->wk_refcount);

	FUNC4(&omap_port->wk_lock);
	if (omap_port->wk_refcount++) {
		FUNC5(&omap_port->wk_lock);
		return 0;
	}
	FUNC5(&omap_port->wk_lock);

	FUNC3(&omap_port->work);

	return 0;
}