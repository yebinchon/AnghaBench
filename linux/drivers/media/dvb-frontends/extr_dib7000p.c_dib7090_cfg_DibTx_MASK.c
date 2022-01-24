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
typedef  int u32 ;
struct dib7000p_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib7000p_state*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct dib7000p_state *state, u32 P_Kin, u32 P_Kout, u32 insertExtSynchro, u32 synchroMode, u32 syncWord, u32 syncSize)
{
	FUNC1("Configure DibStream Tx\n");

	FUNC0(state, 1615, 1);
	FUNC0(state, 1603, P_Kin);
	FUNC0(state, 1605, P_Kout);
	FUNC0(state, 1606, insertExtSynchro);
	FUNC0(state, 1608, synchroMode);
	FUNC0(state, 1609, (syncWord >> 16) & 0xffff);
	FUNC0(state, 1610, syncWord & 0xffff);
	FUNC0(state, 1612, syncSize);
	FUNC0(state, 1615, 0);

	return 0;
}