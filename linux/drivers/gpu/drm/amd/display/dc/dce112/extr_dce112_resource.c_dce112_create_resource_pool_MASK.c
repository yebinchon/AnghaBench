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
typedef  int /*<<< orphan*/  uint8_t ;
struct resource_pool {int dummy; } ;
struct dce110_resource_pool {struct resource_pool base; } ;
struct dc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct dc*,struct dce110_resource_pool*) ; 
 int /*<<< orphan*/  FUNC2 (struct dce110_resource_pool*) ; 
 struct dce110_resource_pool* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct resource_pool *FUNC4(
	uint8_t num_virtual_links,
	struct dc *dc)
{
	struct dce110_resource_pool *pool =
		FUNC3(sizeof(struct dce110_resource_pool), GFP_KERNEL);

	if (!pool)
		return NULL;

	if (FUNC1(num_virtual_links, dc, pool))
		return &pool->base;

	FUNC2(pool);
	FUNC0();
	return NULL;
}