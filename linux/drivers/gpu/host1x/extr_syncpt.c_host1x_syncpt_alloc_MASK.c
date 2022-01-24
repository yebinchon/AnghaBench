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
struct host1x_syncpt {char* name; int client_managed; int /*<<< orphan*/ * base; struct host1x_client* client; int /*<<< orphan*/  id; } ;
struct host1x_client {int /*<<< orphan*/  dev; } ;
struct host1x {int /*<<< orphan*/  syncpt_mutex; TYPE_1__* info; struct host1x_syncpt* syncpt; } ;
struct TYPE_2__ {unsigned int nb_pts; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long HOST1X_SYNCPT_CLIENT_MANAGED ; 
 unsigned long HOST1X_SYNCPT_HAS_BASE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct host1x*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct host1x_syncpt *FUNC6(struct host1x *host,
						 struct host1x_client *client,
						 unsigned long flags)
{
	struct host1x_syncpt *sp = host->syncpt;
	unsigned int i;
	char *name;

	FUNC4(&host->syncpt_mutex);

	for (i = 0; i < host->info->nb_pts && sp->name; i++, sp++)
		;

	if (i >= host->info->nb_pts)
		goto unlock;

	if (flags & HOST1X_SYNCPT_HAS_BASE) {
		sp->base = FUNC2(host);
		if (!sp->base)
			goto unlock;
	}

	name = FUNC3(GFP_KERNEL, "%02u-%s", sp->id,
			 client ? FUNC0(client->dev) : NULL);
	if (!name)
		goto free_base;

	sp->client = client;
	sp->name = name;

	if (flags & HOST1X_SYNCPT_CLIENT_MANAGED)
		sp->client_managed = true;
	else
		sp->client_managed = false;

	FUNC5(&host->syncpt_mutex);
	return sp;

free_base:
	FUNC1(sp->base);
	sp->base = NULL;
unlock:
	FUNC5(&host->syncpt_mutex);
	return NULL;
}