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
struct resource_pool {int dummy; } ;
struct dcn21_resource_pool {struct resource_pool base; } ;
struct dc_init_data {int /*<<< orphan*/  num_virtual_links; } ;
struct dc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct dc*,struct dcn21_resource_pool*) ; 
 int /*<<< orphan*/  FUNC2 (struct dcn21_resource_pool*) ; 
 struct dcn21_resource_pool* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct resource_pool *FUNC4(
		const struct dc_init_data *init_data,
		struct dc *dc)
{
	struct dcn21_resource_pool *pool =
		FUNC3(sizeof(struct dcn21_resource_pool), GFP_KERNEL);

	if (!pool)
		return NULL;

	if (FUNC1(init_data->num_virtual_links, dc, pool))
		return &pool->base;

	FUNC0();
	FUNC2(pool);
	return NULL;
}