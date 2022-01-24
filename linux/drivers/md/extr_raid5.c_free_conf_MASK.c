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
struct r5conf {int pool_size; struct r5conf* pending_data; struct r5conf* stripe_hashtbl; int /*<<< orphan*/  bio_split; struct r5conf* disks; scalar_t__ extra_page; int /*<<< orphan*/  shrinker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC2 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC3 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC6 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct r5conf *conf)
{
	int i;

	FUNC3(conf);

	FUNC7(&conf->shrinker);
	FUNC1(conf);
	FUNC6(conf);
	FUNC5(conf);
	for (i = 0; i < conf->pool_size; i++)
		if (conf->disks[i].extra_page)
			FUNC4(conf->disks[i].extra_page);
	FUNC2(conf->disks);
	FUNC0(&conf->bio_split);
	FUNC2(conf->stripe_hashtbl);
	FUNC2(conf->pending_data);
	FUNC2(conf);
}