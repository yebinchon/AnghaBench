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
struct dib8000_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib8000_state*,int,int) ; 
 int FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(struct dib8000_state *state, u32 P_Kin,
		u32 P_Kout, u32 synchroMode, u32 insertExtSynchro,
		u32 syncWord, u32 syncSize, u32 dataOutRate)
{
	u32 syncFreq;

	FUNC2("Configure DibStream Rx synchroMode = %d\n", synchroMode);

	if ((P_Kin != 0) && (P_Kout != 0)) {
		syncFreq = FUNC1(P_Kin, P_Kout,
				insertExtSynchro, syncSize);
		FUNC0(state, 1542, syncFreq);
	}

	FUNC0(state, 1554, 1);
	FUNC0(state, 1536, P_Kin);
	FUNC0(state, 1537, P_Kout);
	FUNC0(state, 1539, synchroMode);
	FUNC0(state, 1540, (syncWord >> 16) & 0xffff);
	FUNC0(state, 1541, syncWord & 0xffff);
	FUNC0(state, 1543, syncSize);
	FUNC0(state, 1544, dataOutRate);
	FUNC0(state, 1554, 0);
}