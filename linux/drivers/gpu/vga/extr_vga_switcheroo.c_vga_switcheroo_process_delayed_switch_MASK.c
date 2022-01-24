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
struct vga_switcheroo_client {int dummy; } ;
struct TYPE_2__ {int delayed_switch_active; int /*<<< orphan*/  delayed_client_id; int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct vga_switcheroo_client* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vga_switcheroo_client*) ; 
 int /*<<< orphan*/  vgasr_mutex ; 
 TYPE_1__ vgasr_priv ; 

int FUNC7(void)
{
	struct vga_switcheroo_client *client;
	int ret;
	int err = -EINVAL;

	FUNC2(&vgasr_mutex);
	if (!vgasr_priv.delayed_switch_active)
		goto err;

	FUNC5("processing delayed switch to %d\n",
		vgasr_priv.delayed_client_id);

	client = FUNC1(&vgasr_priv.clients,
				     vgasr_priv.delayed_client_id);
	if (!client || !FUNC0())
		goto err;

	ret = FUNC6(client);
	if (ret)
		FUNC4("delayed switching failed stage 2 %d\n", ret);

	vgasr_priv.delayed_switch_active = false;
	err = 0;
err:
	FUNC3(&vgasr_mutex);
	return err;
}