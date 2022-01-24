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
struct drxk_state {int m_operation_mode; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
#define  OM_DVBT 130 
#define  OM_QAM_ITU_A 129 
#define  OM_QAM_ITU_C 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct drxk_state*,scalar_t__*) ; 
 int FUNC2 (struct drxk_state*,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct drxk_state *state, s32 *p_signal_to_noise)
{
	FUNC0(1, "\n");

	*p_signal_to_noise = 0;
	switch (state->m_operation_mode) {
	case OM_DVBT:
		return FUNC1(state, p_signal_to_noise);
	case OM_QAM_ITU_A:
	case OM_QAM_ITU_C:
		return FUNC2(state, p_signal_to_noise);
	default:
		break;
	}
	return 0;
}