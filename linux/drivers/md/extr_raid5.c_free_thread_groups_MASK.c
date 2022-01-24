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
struct r5conf {TYPE_1__* worker_groups; } ;
struct TYPE_2__ {struct TYPE_2__* workers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(struct r5conf *conf)
{
	if (conf->worker_groups)
		FUNC0(conf->worker_groups[0].workers);
	FUNC0(conf->worker_groups);
	conf->worker_groups = NULL;
}