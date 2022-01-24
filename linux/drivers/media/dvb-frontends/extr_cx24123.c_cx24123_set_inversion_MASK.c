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
typedef  int u8 ;
struct cx24123_state {int dummy; } ;
typedef  enum fe_spectral_inversion { ____Placeholder_fe_spectral_inversion } fe_spectral_inversion ;

/* Variables and functions */
 int EINVAL ; 
#define  INVERSION_AUTO 130 
#define  INVERSION_OFF 129 
#define  INVERSION_ON 128 
 int FUNC0 (struct cx24123_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx24123_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct cx24123_state *state,
				 enum fe_spectral_inversion inversion)
{
	u8 nom_reg = FUNC0(state, 0x0e);
	u8 auto_reg = FUNC0(state, 0x10);

	switch (inversion) {
	case INVERSION_OFF:
		FUNC2("inversion off\n");
		FUNC1(state, 0x0e, nom_reg & ~0x80);
		FUNC1(state, 0x10, auto_reg | 0x80);
		break;
	case INVERSION_ON:
		FUNC2("inversion on\n");
		FUNC1(state, 0x0e, nom_reg | 0x80);
		FUNC1(state, 0x10, auto_reg | 0x80);
		break;
	case INVERSION_AUTO:
		FUNC2("inversion auto\n");
		FUNC1(state, 0x10, auto_reg & ~0x80);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}