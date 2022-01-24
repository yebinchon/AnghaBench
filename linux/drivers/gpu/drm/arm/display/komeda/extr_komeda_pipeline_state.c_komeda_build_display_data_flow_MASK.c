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
struct komeda_pipeline {int /*<<< orphan*/  ctrlr; int /*<<< orphan*/  improc; int /*<<< orphan*/  compiz; int /*<<< orphan*/  id; } ;
struct komeda_data_flow_cfg {int dummy; } ;
struct komeda_crtc_state {int /*<<< orphan*/  active_pipes; } ;
struct komeda_crtc {struct komeda_pipeline* slave; struct komeda_pipeline* master; } ;
typedef  int /*<<< orphan*/  s_dflow ;
typedef  int /*<<< orphan*/  m_dflow ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct komeda_crtc_state*,struct komeda_data_flow_cfg*) ; 
 int /*<<< orphan*/  FUNC5 (struct komeda_data_flow_cfg*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct komeda_crtc *kcrtc,
				   struct komeda_crtc_state *kcrtc_st)
{
	struct komeda_pipeline *master = kcrtc->master;
	struct komeda_pipeline *slave  = kcrtc->slave;
	struct komeda_data_flow_cfg m_dflow; /* master data flow */
	struct komeda_data_flow_cfg s_dflow; /* slave data flow */
	int err;

	FUNC5(&m_dflow, 0, sizeof(m_dflow));
	FUNC5(&s_dflow, 0, sizeof(s_dflow));

	if (slave && FUNC0(slave->id, kcrtc_st->active_pipes)) {
		err = FUNC2(slave->compiz, kcrtc_st, &s_dflow);
		if (err)
			return err;

		/* merge the slave dflow into master pipeline */
		err = FUNC1(master->compiz, kcrtc_st,
					      &s_dflow);
		if (err)
			return err;
	}

	err = FUNC2(master->compiz, kcrtc_st, &m_dflow);
	if (err)
		return err;

	err = FUNC3(master->improc, kcrtc_st, &m_dflow);
	if (err)
		return err;

	err = FUNC4(master->ctrlr, kcrtc_st, &m_dflow);
	if (err)
		return err;

	return 0;
}