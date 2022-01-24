#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct intel_scaler {int /*<<< orphan*/  mode; int /*<<< orphan*/  in_use; } ;
struct TYPE_3__ {struct intel_scaler* scalers; int /*<<< orphan*/  scaler_id; int /*<<< orphan*/  scaler_users; } ;
struct intel_crtc_state {TYPE_1__ scaler_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct intel_crtc {int num_scalers; TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 
 struct intel_crtc_state* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct seq_file *m, struct intel_crtc *intel_crtc)
{
	struct intel_crtc_state *pipe_config;
	int num_scalers = intel_crtc->num_scalers;
	int i;

	pipe_config = FUNC2(intel_crtc->base.state);

	/* Not all platformas have a scaler */
	if (num_scalers) {
		FUNC0(m, "\tnum_scalers=%d, scaler_users=%x scaler_id=%d",
			   num_scalers,
			   pipe_config->scaler_state.scaler_users,
			   pipe_config->scaler_state.scaler_id);

		for (i = 0; i < num_scalers; i++) {
			struct intel_scaler *sc =
					&pipe_config->scaler_state.scalers[i];

			FUNC0(m, ", scalers[%d]: use=%s, mode=%x",
				   i, FUNC3(sc->in_use), sc->mode);
		}
		FUNC1(m, "\n");
	} else {
		FUNC1(m, "\tNo scalers available on this platform\n");
	}
}