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
struct TYPE_3__ {int active; int /*<<< orphan*/  mux_hw_lock; int /*<<< orphan*/ * handler; scalar_t__ handler_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  vgasr_mutex ; 
 TYPE_1__ vgasr_priv ; 

void FUNC4(void)
{
	FUNC0(&vgasr_mutex);
	FUNC0(&vgasr_priv.mux_hw_lock);
	vgasr_priv.handler_flags = 0;
	vgasr_priv.handler = NULL;
	if (vgasr_priv.active) {
		FUNC2("disabled\n");
		FUNC3(&vgasr_priv);
		vgasr_priv.active = false;
	}
	FUNC1(&vgasr_priv.mux_hw_lock);
	FUNC1(&vgasr_mutex);
}