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
struct ad7768_state {int /*<<< orphan*/  gpio_sync_in; } ;
typedef  enum ad7768_dec_rate { ____Placeholder_ad7768_dec_rate } ad7768_dec_rate ;

/* Variables and functions */
 int AD7768_DEC_RATE_16 ; 
 int AD7768_DEC_RATE_8 ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  AD7768_REG_DIGITAL_FILTER ; 
 int FUNC2 (struct ad7768_state*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ad7768_state *st,
			      enum ad7768_dec_rate dec_rate)
{
	unsigned int mode;
	int ret;

	if (dec_rate == AD7768_DEC_RATE_8 || dec_rate == AD7768_DEC_RATE_16)
		mode = FUNC1(dec_rate);
	else
		mode = FUNC0(dec_rate);

	ret = FUNC2(st, AD7768_REG_DIGITAL_FILTER, mode);
	if (ret < 0)
		return ret;

	/* A sync-in pulse is required every time the filter dec rate changes */
	FUNC3(st->gpio_sync_in, 1);
	FUNC3(st->gpio_sync_in, 0);

	return 0;
}