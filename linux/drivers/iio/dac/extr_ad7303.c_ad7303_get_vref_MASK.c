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
struct iio_chan_spec {int dummy; } ;
struct ad7303_state {int config; int /*<<< orphan*/  vdd_reg; int /*<<< orphan*/  vref_reg; } ;

/* Variables and functions */
 int AD7303_CFG_EXTERNAL_VREF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct ad7303_state *st,
	struct iio_chan_spec const *chan)
{
	int ret;

	if (st->config & AD7303_CFG_EXTERNAL_VREF)
		return FUNC0(st->vref_reg);

	ret = FUNC0(st->vdd_reg);
	if (ret < 0)
		return ret;
	return ret / 2;
}