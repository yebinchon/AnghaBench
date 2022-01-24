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
struct work_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ input; } ;
struct dm_cache_migration {TYPE_1__ k; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_cache_migration*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct work_struct*) ; 
 struct dm_cache_migration* FUNC2 (struct work_struct*) ; 

__attribute__((used)) static void FUNC3(struct work_struct *ws)
{
	struct dm_cache_migration *mg = FUNC2(ws);

	/*
	 * Did the copy succeed?
	 */
	if (mg->k.input)
		FUNC0(mg, false);
	else
		FUNC1(ws);
}