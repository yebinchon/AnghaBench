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

/* Variables and functions */
 int FUNC0 (int) ; 
 int REG_GPIODATADIR1 ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(int gpio)
{
	u8 d_bnk = gpio >> 3;
	u8 d_msk = FUNC0(gpio & 0x7);
	u8 base = REG_GPIODATADIR1 + d_bnk;
	int ret = 0;

	ret = FUNC1(base);
	if (ret < 0)
		return ret;

	/* 1 = output, but gpiolib semantics are inverse so invert */
	ret = !(ret & d_msk);

	return ret;
}