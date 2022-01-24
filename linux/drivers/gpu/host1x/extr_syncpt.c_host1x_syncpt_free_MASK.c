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
struct host1x_syncpt {int client_managed; TYPE_1__* host; int /*<<< orphan*/ * name; int /*<<< orphan*/ * client; int /*<<< orphan*/ * base; } ;
struct TYPE_2__ {int /*<<< orphan*/  syncpt_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct host1x_syncpt *sp)
{
	if (!sp)
		return;

	FUNC2(&sp->host->syncpt_mutex);

	FUNC0(sp->base);
	FUNC1(sp->name);
	sp->base = NULL;
	sp->client = NULL;
	sp->name = NULL;
	sp->client_managed = false;

	FUNC3(&sp->host->syncpt_mutex);
}