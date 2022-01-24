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
typedef  int /*<<< orphan*/  u32 ;
struct stv090x_state {int dummy; } ;
typedef  enum stv090x_delsys { ____Placeholder_stv090x_delsys } stv090x_delsys ;

/* Variables and functions */
 int /*<<< orphan*/  DMDSTATE ; 
 int /*<<< orphan*/  DSS_DVB_FIELD ; 
 int /*<<< orphan*/  FECM ; 
 int /*<<< orphan*/  HEADER_MODE_FIELD ; 
 int STV090x_DSS ; 
 int STV090x_DVBS1 ; 
 int STV090x_DVBS2 ; 
 int STV090x_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stv090x_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum stv090x_delsys FUNC2(struct stv090x_state *state)
{
	u32 reg;
	enum stv090x_delsys delsys;

	reg = FUNC1(state, DMDSTATE);
	if (FUNC0(reg, HEADER_MODE_FIELD) == 2)
		delsys = STV090x_DVBS2;
	else if (FUNC0(reg, HEADER_MODE_FIELD) == 3) {
		reg = FUNC1(state, FECM);
		if (FUNC0(reg, DSS_DVB_FIELD) == 1)
			delsys = STV090x_DSS;
		else
			delsys = STV090x_DVBS1;
	} else {
		delsys = STV090x_ERROR;
	}

	return delsys;
}