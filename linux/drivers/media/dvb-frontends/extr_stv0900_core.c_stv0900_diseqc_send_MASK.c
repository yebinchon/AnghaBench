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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct stv0900_internal {int dummy; } ;
typedef  size_t s32 ;
typedef  enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;

/* Variables and functions */
 int /*<<< orphan*/  DISTXDATA ; 
 int /*<<< orphan*/  DIS_PRECHARGE ; 
 int /*<<< orphan*/  FIFO_FULL ; 
 int /*<<< orphan*/  TX_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct stv0900_internal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stv0900_internal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct stv0900_internal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct stv0900_internal *intp , u8 *data,
				u32 NbData, enum fe_stv0900_demod_num demod)
{
	s32 i = 0;

	FUNC2(intp, DIS_PRECHARGE, 1);
	while (i < NbData) {
		while (FUNC1(intp, FIFO_FULL))
			;/* checkpatch complains */
		FUNC3(intp, DISTXDATA, data[i]);
		i++;
	}

	FUNC2(intp, DIS_PRECHARGE, 0);
	i = 0;
	while ((FUNC1(intp, TX_IDLE) != 1) && (i < 10)) {
		FUNC0(10);
		i++;
	}

	return 0;
}