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
struct vga_switcheroo_handler {int dummy; } ;
typedef  enum vga_switcheroo_handler_flags_t { ____Placeholder_vga_switcheroo_handler_flags_t } vga_switcheroo_handler_flags_t ;
struct TYPE_2__ {int handler_flags; struct vga_switcheroo_handler const* handler; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  vgasr_mutex ; 
 TYPE_1__ vgasr_priv ; 

int FUNC5(
			  const struct vga_switcheroo_handler *handler,
			  enum vga_switcheroo_handler_flags_t handler_flags)
{
	FUNC0(&vgasr_mutex);
	if (vgasr_priv.handler) {
		FUNC1(&vgasr_mutex);
		return -EINVAL;
	}

	vgasr_priv.handler = handler;
	vgasr_priv.handler_flags = handler_flags;
	if (FUNC4()) {
		FUNC2("enabled\n");
		FUNC3();
	}
	FUNC1(&vgasr_mutex);
	return 0;
}