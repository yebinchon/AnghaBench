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
struct stb0899_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSM_AUTO_PARAM ; 
 int /*<<< orphan*/  CSM_CNTRL1 ; 
 int /*<<< orphan*/  STB0899_BASE_CSM_CNTRL1 ; 
 int /*<<< orphan*/  STB0899_OFF0_CSM_CNTRL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STB0899_S2DEMOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct stb0899_state *state)
{
	u32 reg;

	reg = FUNC0(STB0899_S2DEMOD, CSM_CNTRL1);
	FUNC1(CSM_AUTO_PARAM, reg, 1);
	FUNC2(state, STB0899_S2DEMOD, STB0899_BASE_CSM_CNTRL1, STB0899_OFF0_CSM_CNTRL1, reg);
}