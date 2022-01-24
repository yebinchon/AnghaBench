#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int u32 ;
struct mxl {TYPE_1__* base; int /*<<< orphan*/  demod; } ;
struct TYPE_13__ {TYPE_10__* stat; } ;
struct TYPE_22__ {TYPE_8__* stat; } ;
struct TYPE_20__ {TYPE_6__* stat; } ;
struct TYPE_18__ {TYPE_4__* stat; } ;
struct TYPE_16__ {TYPE_2__* stat; } ;
struct dtv_frontend_properties {TYPE_11__ post_bit_count; TYPE_9__ post_bit_error; TYPE_7__ pre_bit_count; TYPE_5__ pre_bit_error; TYPE_3__ cnr; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct mxl* demodulator_priv; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;
struct TYPE_21__ {void* scale; } ;
struct TYPE_19__ {void* scale; } ;
struct TYPE_17__ {void* scale; } ;
struct TYPE_15__ {void* scale; } ;
struct TYPE_14__ {int /*<<< orphan*/  status_lock; } ;
struct TYPE_12__ {void* scale; } ;

/* Variables and functions */
 int FE_HAS_CARRIER ; 
 int FE_HAS_SYNC ; 
 void* FE_SCALE_NOT_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (struct mxl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mxl*,int /*<<< orphan*/ ) ; 
 scalar_t__ HYDRA_DMD_LOCK_STATUS_ADDR_OFFSET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC6 (struct mxl*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC8 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC9(struct dvb_frontend *fe, enum fe_status *status)
{
	struct mxl *state = fe->demodulator_priv;
	struct dtv_frontend_properties *p = &fe->dtv_property_cache;
	u32 reg_data = 0;

	FUNC3(&state->base->status_lock);
	FUNC0(state, state->demod);
	FUNC6(state, (HYDRA_DMD_LOCK_STATUS_ADDR_OFFSET +
			     FUNC2(state->demod)),
			     &reg_data);
	FUNC1(state, state->demod);
	FUNC4(&state->base->status_lock);

	*status = (reg_data == 1) ? 0x1f : 0;

	/* signal statistics */

	/* signal strength is always available */
	FUNC7(fe);

	if (*status & FE_HAS_CARRIER)
		FUNC8(fe);
	else
		p->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;

	if (*status & FE_HAS_SYNC)
		FUNC5(fe);
	else {
		p->pre_bit_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
		p->pre_bit_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
		p->post_bit_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
		p->post_bit_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
	}

	return 0;
}