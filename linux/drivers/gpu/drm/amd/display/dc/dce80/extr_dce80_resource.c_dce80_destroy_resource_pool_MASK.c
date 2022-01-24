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
struct dce110_resource_pool {int dummy; } ;

/* Variables and functions */
 struct dce110_resource_pool* FUNC0 (struct resource_pool*) ; 
 int /*<<< orphan*/  FUNC1 (struct dce110_resource_pool*) ; 
 int /*<<< orphan*/  FUNC2 (struct dce110_resource_pool*) ; 

__attribute__((used)) static void FUNC3(struct resource_pool **pool)
{
	struct dce110_resource_pool *dce110_pool = FUNC0(*pool);

	FUNC1(dce110_pool);
	FUNC2(dce110_pool);
	*pool = NULL;
}