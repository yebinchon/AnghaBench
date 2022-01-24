#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ad7124_state {TYPE_1__* channel_config; } ;
struct TYPE_2__ {unsigned int pga_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  AD7124_CONFIG_PGA_MSK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  ad7124_gain ; 
 int FUNC4 (struct ad7124_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ad7124_state *st,
				   unsigned int channel,
				   unsigned int gain)
{
	unsigned int res;
	int ret;

	res = FUNC3(ad7124_gain,
					FUNC2(ad7124_gain), gain);
	ret = FUNC4(st, FUNC0(channel),
				    AD7124_CONFIG_PGA_MSK,
				    FUNC1(res), 2);
	if (ret < 0)
		return ret;

	st->channel_config[channel].pga_bits = res;

	return 0;
}