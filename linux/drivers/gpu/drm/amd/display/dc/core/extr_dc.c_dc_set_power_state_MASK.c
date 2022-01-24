#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct kref {int dummy; } ;
struct display_mode_lib {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  valid; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* init_sys_ctx ) (int /*<<< orphan*/ ,struct dc*,TYPE_3__*) ;int /*<<< orphan*/  (* init_hw ) (struct dc*) ;} ;
struct dc {TYPE_4__* current_state; TYPE_3__ vm_pa_config; int /*<<< orphan*/  hwseq; TYPE_1__ hwss; } ;
typedef  enum dc_acpi_cm_power_state { ____Placeholder_dc_acpi_cm_power_state } dc_acpi_cm_power_state ;
struct TYPE_8__ {struct display_mode_lib dml; } ;
struct TYPE_10__ {TYPE_2__ bw_ctx; struct kref refcount; int /*<<< orphan*/  stream_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  DC_ACPI_CM_POWER_STATE_D0 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct dc*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct display_mode_lib*) ; 
 struct display_mode_lib* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct display_mode_lib*,struct display_mode_lib*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct dc*,TYPE_3__*) ; 

void FUNC9(
	struct dc *dc,
	enum dc_acpi_cm_power_state power_state)
{
	struct kref refcount;
	struct display_mode_lib *dml = FUNC4(sizeof(struct display_mode_lib),
						GFP_KERNEL);

	FUNC0(dml);
	if (!dml)
		return;

	switch (power_state) {
	case DC_ACPI_CM_POWER_STATE_D0:
		FUNC1(dc, dc->current_state);

		dc->hwss.init_hw(dc);

#ifdef CONFIG_DRM_AMD_DC_DCN2_0
		if (dc->hwss.init_sys_ctx != NULL &&
			dc->vm_pa_config.valid) {
			dc->hwss.init_sys_ctx(dc->hwseq, dc, &dc->vm_pa_config);
		}
#endif

		break;
	default:
		FUNC0(dc->current_state->stream_count == 0);
		/* Zero out the current context so that on resume we start with
		 * clean state, and dc hw programming optimizations will not
		 * cause any trouble.
		 */

		/* Preserve refcount */
		refcount = dc->current_state->refcount;
		/* Preserve display mode lib */
		FUNC5(dml, &dc->current_state->bw_ctx.dml, sizeof(struct display_mode_lib));

		FUNC2(dc->current_state);
		FUNC6(dc->current_state, 0,
				sizeof(*dc->current_state));

		dc->current_state->refcount = refcount;
		dc->current_state->bw_ctx.dml = *dml;

		break;
	}

	FUNC3(dml);
}