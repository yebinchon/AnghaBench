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
struct lgdt3306a_state {int current_modulation; } ;
struct dtv_frontend_properties {int modulation; } ;

/* Variables and functions */
 int EINVAL ; 
#define  QAM_256 131 
#define  QAM_64 130 
#define  QAM_AUTO 129 
#define  VSB_8 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct lgdt3306a_state*,int) ; 
 int FUNC3 (struct lgdt3306a_state*) ; 

__attribute__((used)) static int FUNC4(struct lgdt3306a_state *state,
				   struct dtv_frontend_properties *p)
{
	int ret;

	FUNC0("\n");

	switch (p->modulation) {
	case VSB_8:
		ret = FUNC3(state);
		break;
	case QAM_64:
	case QAM_256:
	case QAM_AUTO:
		ret = FUNC2(state, p->modulation);
		break;
	default:
		return -EINVAL;
	}
	if (FUNC1(ret))
		goto fail;

	state->current_modulation = p->modulation;

fail:
	return ret;
}