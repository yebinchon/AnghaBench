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
typedef  int u32 ;
struct mxl {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (struct mxl*,int,int*) ; 

__attribute__((used)) static int FUNC2(struct mxl *state,
			    u32 reg, u8 lsbloc, u8 numofbits, u32 *val)
{
	u32 data = 0, mask = 0;
	int stat;

	stat = FUNC1(state, reg, &data);
	if (stat)
		return stat;
	mask = FUNC0(lsbloc, numofbits);
	data &= mask;
	data >>= lsbloc;
	*val = data;
	return 0;
}