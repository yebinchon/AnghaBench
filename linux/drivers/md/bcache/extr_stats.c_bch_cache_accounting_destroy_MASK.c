#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct cache_accounting {int /*<<< orphan*/  cl; int /*<<< orphan*/  timer; int /*<<< orphan*/  closing; TYPE_4__ day; TYPE_3__ hour; TYPE_2__ five_minute; TYPE_1__ total; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct cache_accounting *acc)
{
	FUNC3(&acc->total.kobj);
	FUNC3(&acc->five_minute.kobj);
	FUNC3(&acc->hour.kobj);
	FUNC3(&acc->day.kobj);

	FUNC0(&acc->closing, 1);
	if (FUNC2(&acc->timer))
		FUNC1(&acc->cl);
}