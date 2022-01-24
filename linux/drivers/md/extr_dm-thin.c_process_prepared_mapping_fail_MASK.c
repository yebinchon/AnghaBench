#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dm_thin_new_mapping {TYPE_1__* tc; int /*<<< orphan*/  list; int /*<<< orphan*/  cell; } ;
struct TYPE_4__ {int /*<<< orphan*/  mapping_pool; } ;
struct TYPE_3__ {TYPE_2__* pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_thin_new_mapping*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dm_thin_new_mapping *m)
{
	FUNC0(m->tc->pool, m->cell);
	FUNC1(&m->list);
	FUNC2(m, &m->tc->pool->mapping_pool);
}