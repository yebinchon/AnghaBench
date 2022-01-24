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
struct lgdt3305_state {int dummy; } ;
struct dtv_frontend_properties {int modulation; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LGDT3305_CR_CTRL_7 ; 
 int /*<<< orphan*/  LGDT3305_FEC_BLOCK_CTRL ; 
#define  QAM_256 130 
#define  QAM_64 129 
#define  VSB_8 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct lgdt3305_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct lgdt3305_state *state,
				       struct dtv_frontend_properties *p,
				       int inversion)
{
	int ret;

	FUNC0("(%d)\n", inversion);

	switch (p->modulation) {
	case VSB_8:
		ret = FUNC1(state, LGDT3305_CR_CTRL_7,
					 inversion ? 0xf9 : 0x79);
		break;
	case QAM_64:
	case QAM_256:
		ret = FUNC1(state, LGDT3305_FEC_BLOCK_CTRL,
					 inversion ? 0xfd : 0xff);
		break;
	default:
		ret = -EINVAL;
	}
	return ret;
}