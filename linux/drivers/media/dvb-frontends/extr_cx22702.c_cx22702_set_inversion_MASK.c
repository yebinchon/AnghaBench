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
struct cx22702_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  INVERSION_AUTO 130 
#define  INVERSION_OFF 129 
#define  INVERSION_ON 128 
 int FUNC0 (struct cx22702_state*,int) ; 
 int FUNC1 (struct cx22702_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct cx22702_state *state, int inversion)
{
	u8 val;

	val = FUNC0(state, 0x0C);
	switch (inversion) {
	case INVERSION_AUTO:
		return -EOPNOTSUPP;
	case INVERSION_ON:
		val |= 0x01;
		break;
	case INVERSION_OFF:
		val &= 0xfe;
		break;
	default:
		return -EINVAL;
	}
	return FUNC1(state, 0x0C, val);
}