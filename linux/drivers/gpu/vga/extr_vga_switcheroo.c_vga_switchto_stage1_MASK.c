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
struct vga_switcheroo_client {int /*<<< orphan*/  pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 scalar_t__ VGA_SWITCHEROO_OFF ; 
 struct vga_switcheroo_client* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vga_switcheroo_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct vga_switcheroo_client*) ; 
 TYPE_1__ vgasr_priv ; 

__attribute__((used)) static int FUNC4(struct vga_switcheroo_client *new_client)
{
	struct vga_switcheroo_client *active;

	active = FUNC0(&vgasr_priv.clients);
	if (!active)
		return 0;

	if (FUNC2(new_client) == VGA_SWITCHEROO_OFF)
		FUNC3(new_client);

	FUNC1(new_client->pdev);
	return 0;
}