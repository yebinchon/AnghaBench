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
typedef  int u16 ;
struct dib7000p_state {int dummy; } ;

/* Variables and functions */
#define  DEMOUT_ON_HOSTBUS 130 
#define  DIBTX_ON_HOSTBUS 129 
#define  MPEG_ON_HOSTBUS 128 
 int FUNC0 (struct dib7000p_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib7000p_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct dib7000p_state *state, int mode)
{
	u16 reg_1288 = FUNC0(state, 1288) & ~(0x7 << 4);

	switch (mode) {
	case DEMOUT_ON_HOSTBUS:
			FUNC3("SET DEM OUT OLD INTERF ON HOST BUS\n");
			FUNC2(state, 0);
			reg_1288 |= (1<<6);
			break;
	case DIBTX_ON_HOSTBUS:
			FUNC3("SET DIBSTREAM TX ON HOST BUS\n");
			FUNC2(state, 0);
			reg_1288 |= (1<<5);
			break;
	case MPEG_ON_HOSTBUS:
			FUNC3("SET MPEG MUX ON HOST BUS\n");
			reg_1288 |= (1<<4);
			break;
	default:
			break;
	}
	FUNC1(state, 1288, reg_1288);
}