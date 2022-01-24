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
typedef  size_t u8 ;
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 size_t FUNC4 (unsigned long,unsigned long*,int /*<<< orphan*/ ) ; 
 unsigned long* pwm_freq_cksel0 ; 

__attribute__((used)) static u8 FUNC5(unsigned long val, u16 clkin)
{
	unsigned long base_clock;
	u8 reg0, reg1;
	unsigned long best0, best1;

	/* Best fit for cksel = 0 */
	reg0 = FUNC4(val, pwm_freq_cksel0,
				       FUNC0(pwm_freq_cksel0));
	if (val < 375)	/* cksel = 1 can't beat this */
		return reg0;
	best0 = pwm_freq_cksel0[reg0];

	/* Best fit for cksel = 1 */
	base_clock = clkin * 1000 / ((clkin == 48000) ? 384 : 256);
	reg1 = FUNC3(FUNC1(base_clock, val), 1, 128);
	best1 = base_clock / reg1;
	reg1 = 0x80 | (reg1 - 1);

	/* Choose the closest one */
	if (FUNC2(val - best0) > FUNC2(val - best1))
		return reg1;
	else
		return reg0;
}