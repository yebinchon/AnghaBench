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
typedef  int u16 ;
struct stv {scalar_t__ nr; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int RSTV0910_P1_DISTXSTATUS ; 
 int /*<<< orphan*/  FUNC0 (struct stv*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct stv *state, u8 flag, u8 val)
{
	int i;
	u8 stat;
	u16 offs = state->nr ? 0x40 : 0;

	for (i = 0; i < 10; i++) {
		FUNC0(state, RSTV0910_P1_DISTXSTATUS + offs, &stat);
		if ((stat & flag) == val)
			return 0;
		FUNC1(10000, 11000);
	}
	return -ETIMEDOUT;
}