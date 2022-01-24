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
struct vmw_stdu_update {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit; } ;
struct vmw_screen_target_display_unit {int /*<<< orphan*/  display_height; int /*<<< orphan*/  display_width; TYPE_1__ base; int /*<<< orphan*/  defined; } ;
struct vmw_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct vmw_stdu_update* FUNC1 (struct vmw_private*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_stdu_update*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vmw_private *dev_priv,
			      struct vmw_screen_target_display_unit *stdu)
{
	struct vmw_stdu_update *cmd;

	if (!stdu->defined) {
		FUNC0("No screen target defined");
		return -EINVAL;
	}

	cmd = FUNC1(dev_priv, sizeof(*cmd));
	if (FUNC2(cmd == NULL))
		return -ENOMEM;

	FUNC4(cmd, stdu->base.unit,
				 0, stdu->display_width,
				 0, stdu->display_height);

	FUNC3(dev_priv, sizeof(*cmd));

	return 0;
}