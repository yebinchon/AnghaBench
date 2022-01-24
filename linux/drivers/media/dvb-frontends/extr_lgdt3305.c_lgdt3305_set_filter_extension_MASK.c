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
#define  QAM_256 130 
#define  QAM_64 129 
#define  VSB_8 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct lgdt3305_state*,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct lgdt3305_state *state,
					 struct dtv_frontend_properties *p)
{
	int val;

	switch (p->modulation) {
	case VSB_8:
		val = 0;
		break;
	case QAM_64:
	case QAM_256:
		val = 1;
		break;
	default:
		return -EINVAL;
	}
	FUNC0("val = %d\n", val);

	return FUNC1(state, 0x043f, 2, val);
}