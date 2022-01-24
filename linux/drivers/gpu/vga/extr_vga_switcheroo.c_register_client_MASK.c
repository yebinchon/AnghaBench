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
struct vga_switcheroo_client_ops {int dummy; } ;
struct vga_switcheroo_client {int id; int active; int driver_power_control; int /*<<< orphan*/  list; struct pci_dev* vga_dev; struct vga_switcheroo_client_ops const* ops; struct pci_dev* pdev; int /*<<< orphan*/  pwr_state; } ;
struct pci_dev {int dummy; } ;
typedef  enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;
struct TYPE_2__ {int /*<<< orphan*/  registered_clients; int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VGA_SWITCHEROO_ON ; 
 scalar_t__ FUNC0 (struct vga_switcheroo_client*) ; 
 struct vga_switcheroo_client* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  vgasr_mutex ; 
 TYPE_1__ vgasr_priv ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev,
			   const struct vga_switcheroo_client_ops *ops,
			   enum vga_switcheroo_client_id id,
			   struct pci_dev *vga_dev,
			   bool active,
			   bool driver_power_control)
{
	struct vga_switcheroo_client *client;

	client = FUNC1(sizeof(*client), GFP_KERNEL);
	if (!client)
		return -ENOMEM;

	client->pwr_state = VGA_SWITCHEROO_ON;
	client->pdev = pdev;
	client->ops = ops;
	client->id = id;
	client->active = active;
	client->driver_power_control = driver_power_control;
	client->vga_dev = vga_dev;

	FUNC3(&vgasr_mutex);
	FUNC2(&client->list, &vgasr_priv.clients);
	if (FUNC0(client))
		vgasr_priv.registered_clients++;

	if (FUNC7()) {
		FUNC5("enabled\n");
		FUNC6();
	}
	FUNC4(&vgasr_mutex);
	return 0;
}