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
struct stv {scalar_t__ regoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALGOSWRST ; 
 int /*<<< orphan*/  FILTER_EN ; 
 int /*<<< orphan*/  FORCE_CONTINUOUS ; 
 int NO_STREAM_ID_FILTER ; 
 scalar_t__ RSTV0910_P2_ISIBITENA ; 
 scalar_t__ RSTV0910_P2_ISIENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TSOUT_NOSYNC ; 
 int /*<<< orphan*/  FUNC1 (struct stv*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct stv *state, u32 isi)
{
	if (isi == NO_STREAM_ID_FILTER)
		return;
	if (isi == 0x80000000) {
		FUNC0(FORCE_CONTINUOUS, 1);
		FUNC0(TSOUT_NOSYNC, 1);
	} else {
		FUNC0(FILTER_EN, 1);
		FUNC1(state, RSTV0910_P2_ISIENTRY + state->regoff,
			  isi & 0xff);
		FUNC1(state, RSTV0910_P2_ISIBITENA + state->regoff, 0xff);
	}
	FUNC0(ALGOSWRST, 1);
	FUNC0(ALGOSWRST, 0);
}