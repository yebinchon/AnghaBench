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
typedef  int uint16_t ;
struct xadc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct xadc*,unsigned int,int*) ; 
 int FUNC1 (struct xadc*,unsigned int,int) ; 

__attribute__((used)) static int FUNC2(struct xadc *xadc, unsigned int reg,
	uint16_t mask, uint16_t val)
{
	uint16_t tmp;
	int ret;

	ret = FUNC0(xadc, reg, &tmp);
	if (ret)
		return ret;

	return FUNC1(xadc, reg, (tmp & ~mask) | val);
}