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
typedef  enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  FEC_1_2 135 
#define  FEC_2_3 134 
#define  FEC_3_4 133 
#define  FEC_4_5 132 
#define  FEC_5_6 131 
#define  FEC_6_7 130 
#define  FEC_7_8 129 
#define  FEC_AUTO 128 
 int FEC_NONE ; 
 int FUNC0 (struct cx24123_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx24123_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct cx24123_state *state, enum fe_code_rate fec)
{
	u8 nom_reg = FUNC0(state, 0x0e) & ~0x07;

	if (((int)fec < FEC_NONE) || (fec > FEC_AUTO))
		fec = FEC_AUTO;

	/* Set the soft decision threshold */
	if (fec == FEC_1_2)
		FUNC1(state, 0x43,
			FUNC0(state, 0x43) | 0x01);
	else
		FUNC1(state, 0x43,
			FUNC0(state, 0x43) & ~0x01);

	switch (fec) {
	case FEC_1_2:
		FUNC2("set FEC to 1/2\n");
		FUNC1(state, 0x0e, nom_reg | 0x01);
		FUNC1(state, 0x0f, 0x02);
		break;
	case FEC_2_3:
		FUNC2("set FEC to 2/3\n");
		FUNC1(state, 0x0e, nom_reg | 0x02);
		FUNC1(state, 0x0f, 0x04);
		break;
	case FEC_3_4:
		FUNC2("set FEC to 3/4\n");
		FUNC1(state, 0x0e, nom_reg | 0x03);
		FUNC1(state, 0x0f, 0x08);
		break;
	case FEC_4_5:
		FUNC2("set FEC to 4/5\n");
		FUNC1(state, 0x0e, nom_reg | 0x04);
		FUNC1(state, 0x0f, 0x10);
		break;
	case FEC_5_6:
		FUNC2("set FEC to 5/6\n");
		FUNC1(state, 0x0e, nom_reg | 0x05);
		FUNC1(state, 0x0f, 0x20);
		break;
	case FEC_6_7:
		FUNC2("set FEC to 6/7\n");
		FUNC1(state, 0x0e, nom_reg | 0x06);
		FUNC1(state, 0x0f, 0x40);
		break;
	case FEC_7_8:
		FUNC2("set FEC to 7/8\n");
		FUNC1(state, 0x0e, nom_reg | 0x07);
		FUNC1(state, 0x0f, 0x80);
		break;
	case FEC_AUTO:
		FUNC2("set FEC to auto\n");
		FUNC1(state, 0x0f, 0xfe);
		break;
	default:
		return -EOPNOTSUPP;
	}

	return 0;
}