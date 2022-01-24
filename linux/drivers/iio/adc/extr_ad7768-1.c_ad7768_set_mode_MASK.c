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
struct ad7768_state {int dummy; } ;
typedef  enum ad7768_conv_mode { ____Placeholder_ad7768_conv_mode } ad7768_conv_mode ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int AD7768_CONV_MODE_MSK ; 
 int /*<<< orphan*/  AD7768_REG_CONVERSION ; 
 int FUNC1 (struct ad7768_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ad7768_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ad7768_state *st,
			   enum ad7768_conv_mode mode)
{
	int regval;

	regval = FUNC1(st, AD7768_REG_CONVERSION, 1);
	if (regval < 0)
		return regval;

	regval &= ~AD7768_CONV_MODE_MSK;
	regval |= FUNC0(mode);

	return FUNC2(st, AD7768_REG_CONVERSION, regval);
}