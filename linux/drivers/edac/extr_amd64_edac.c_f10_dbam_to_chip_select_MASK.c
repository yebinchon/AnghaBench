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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct amd64_pvt {int dclr1; int dclr0; int dchr0; int dchr1; } ;

/* Variables and functions */
 int DDR3_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int WIDTH_128 ; 
 int FUNC1 (unsigned int,int) ; 
 int FUNC2 (unsigned int,int) ; 

__attribute__((used)) static int FUNC3(struct amd64_pvt *pvt, u8 dct,
				   unsigned cs_mode, int cs_mask_nr)
{
	u32 dclr = dct ? pvt->dclr1 : pvt->dclr0;

	FUNC0(cs_mode > 11);

	if (pvt->dchr0 & DDR3_MODE || pvt->dchr1 & DDR3_MODE)
		return FUNC2(cs_mode, dclr & WIDTH_128);
	else
		return FUNC1(cs_mode, dclr & WIDTH_128);
}