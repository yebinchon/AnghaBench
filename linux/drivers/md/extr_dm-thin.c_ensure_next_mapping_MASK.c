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
struct pool {scalar_t__ next_mapping; int /*<<< orphan*/  mapping_pool; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct pool *pool)
{
	if (pool->next_mapping)
		return 0;

	pool->next_mapping = FUNC0(&pool->mapping_pool, GFP_ATOMIC);

	return pool->next_mapping ? 0 : -ENOMEM;
}