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
struct resource_pool {struct dce_i2c_sw** sw_i2cs; } ;
struct ddc {int dummy; } ;
struct dce_i2c_sw {int dummy; } ;
typedef  enum gpio_ddc_line { ____Placeholder_gpio_ddc_line } gpio_ddc_line ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dce_i2c_sw*,struct ddc*) ; 
 scalar_t__ FUNC1 (struct ddc*,int*) ; 

struct dce_i2c_sw *FUNC2(
	struct resource_pool *pool,
	struct ddc *ddc)
{
	enum gpio_ddc_line line;
	struct dce_i2c_sw *engine = NULL;

	if (FUNC1(ddc, &line))
		engine = pool->sw_i2cs[line];

	if (!engine)
		return NULL;

	if (!FUNC0(engine, ddc))
		return NULL;

	return engine;
}