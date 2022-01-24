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
struct vga_switcheroo_client {int /*<<< orphan*/  list; } ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int registered_clients; int active; int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vga_switcheroo_client*) ; 
 struct vga_switcheroo_client* FUNC1 (int /*<<< orphan*/ *,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct vga_switcheroo_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  vgasr_mutex ; 
 TYPE_1__ vgasr_priv ; 

void FUNC8(struct pci_dev *pdev)
{
	struct vga_switcheroo_client *client;

	FUNC4(&vgasr_mutex);
	client = FUNC1(&vgasr_priv.clients, pdev);
	if (client) {
		if (FUNC0(client))
			vgasr_priv.registered_clients--;
		FUNC3(&client->list);
		FUNC2(client);
	}
	if (vgasr_priv.active && vgasr_priv.registered_clients < 2) {
		FUNC6("disabled\n");
		FUNC7(&vgasr_priv);
		vgasr_priv.active = false;
	}
	FUNC5(&vgasr_mutex);
}