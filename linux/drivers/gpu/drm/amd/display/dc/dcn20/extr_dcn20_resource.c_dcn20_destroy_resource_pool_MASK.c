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
struct dcn20_resource_pool {int dummy; } ;

/* Variables and functions */
 struct dcn20_resource_pool* FUNC0 (struct resource_pool*) ; 
 int /*<<< orphan*/  FUNC1 (struct dcn20_resource_pool*) ; 
 int /*<<< orphan*/  FUNC2 (struct dcn20_resource_pool*) ; 

__attribute__((used)) static void FUNC3(struct resource_pool **pool)
{
	struct dcn20_resource_pool *dcn20_pool = FUNC0(*pool);

	FUNC1(dcn20_pool);
	FUNC2(dcn20_pool);
	*pool = NULL;
}