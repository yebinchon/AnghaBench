#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dtv_frontend_properties {int /*<<< orphan*/  modulation; int /*<<< orphan*/  hierarchy; void* code_rate_LP; void* code_rate_HP; int /*<<< orphan*/  guard_interval; int /*<<< orphan*/  transmission_mode; int /*<<< orphan*/  bandwidth_hz; int /*<<< orphan*/  frequency; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;
struct smsdvb_client_t {int /*<<< orphan*/  fe_status; struct dvb_frontend frontend; } ;
struct sms_tx_stats {int /*<<< orphan*/  constellation; int /*<<< orphan*/  hierarchy; int /*<<< orphan*/  lp_code_rate; int /*<<< orphan*/  code_rate; int /*<<< orphan*/  guard_interval; int /*<<< orphan*/  transmission_mode; int /*<<< orphan*/  bandwidth; int /*<<< orphan*/  is_demod_locked; int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct smsdvb_client_t *client,
				    struct sms_tx_stats *p)
{
	struct dvb_frontend *fe = &client->frontend;
	struct dtv_frontend_properties *c = &fe->dtv_property_cache;

	c->frequency = p->frequency;
	client->fe_status = FUNC6(p->is_demod_locked, 0);
	c->bandwidth_hz = FUNC0(p->bandwidth);
	c->transmission_mode = FUNC4(p->transmission_mode);
	c->guard_interval = FUNC2(p->guard_interval);
	c->code_rate_HP = FUNC1(p->code_rate);
	c->code_rate_LP = FUNC1(p->lp_code_rate);
	c->hierarchy = FUNC3(p->hierarchy);
	c->modulation = FUNC5(p->constellation);
}