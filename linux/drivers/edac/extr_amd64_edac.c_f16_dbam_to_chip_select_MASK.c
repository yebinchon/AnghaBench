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
struct amd64_pvt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned int,int) ; 

__attribute__((used)) static int FUNC2(struct amd64_pvt *pvt, u8 dct,
				unsigned cs_mode, int cs_mask_nr)
{
	FUNC0(cs_mode > 12);

	if (cs_mode == 6 || cs_mode == 8 ||
	    cs_mode == 9 || cs_mode == 12)
		return -1;
	else
		return FUNC1(cs_mode, false);
}