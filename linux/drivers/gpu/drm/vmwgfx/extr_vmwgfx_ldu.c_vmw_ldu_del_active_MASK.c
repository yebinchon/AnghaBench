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
struct vmw_private {struct vmw_legacy_display* ldu_priv; } ;
struct vmw_legacy_display_unit {int /*<<< orphan*/  active; } ;
struct vmw_legacy_display {scalar_t__ num_active; TYPE_1__* fb; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unpin ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct vmw_private *vmw_priv,
			      struct vmw_legacy_display_unit *ldu)
{
	struct vmw_legacy_display *ld = vmw_priv->ldu_priv;
	if (FUNC2(&ldu->active))
		return 0;

	/* Must init otherwise list_empty(&ldu->active) will not work. */
	FUNC1(&ldu->active);
	if (--(ld->num_active) == 0) {
		FUNC0(!ld->fb);
		if (ld->fb->unpin)
			ld->fb->unpin(ld->fb);
		ld->fb = NULL;
	}

	return 0;
}