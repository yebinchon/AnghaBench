#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vga_switcheroo_client {int active; int /*<<< orphan*/  id; int /*<<< orphan*/  driver_power_control; int /*<<< orphan*/  pdev; TYPE_2__* ops; scalar_t__ fb_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  mux_hw_lock; TYPE_1__* handler; int /*<<< orphan*/  clients; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* reprobe ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int (* switchto ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ VGA_SWITCHEROO_OFF ; 
 scalar_t__ VGA_SWITCHEROO_ON ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct vga_switcheroo_client* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct vga_switcheroo_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct vga_switcheroo_client*) ; 
 TYPE_3__ vgasr_priv ; 

__attribute__((used)) static int FUNC9(struct vga_switcheroo_client *new_client)
{
	int ret;
	struct vga_switcheroo_client *active;

	active = FUNC1(&vgasr_priv.clients);
	if (!active)
		return 0;

	active->active = false;

	/* let HDA controller autosuspend if GPU uses driver power control */
	if (!active->driver_power_control)
		FUNC4(active->id, VGA_SWITCHEROO_OFF);

	if (new_client->fb_info)
		FUNC0(new_client->fb_info);

	FUNC2(&vgasr_priv.mux_hw_lock);
	ret = vgasr_priv.handler->switchto(new_client->id);
	FUNC3(&vgasr_priv.mux_hw_lock);
	if (ret)
		return ret;

	if (new_client->ops->reprobe)
		new_client->ops->reprobe(new_client->pdev);

	if (FUNC7(active) == VGA_SWITCHEROO_ON)
		FUNC8(active);

	/* let HDA controller autoresume if GPU uses driver power control */
	if (!new_client->driver_power_control)
		FUNC4(new_client->id, VGA_SWITCHEROO_ON);

	new_client->active = true;
	return 0;
}