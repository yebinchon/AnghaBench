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
struct r5conf {int /*<<< orphan*/ * slab_cache; scalar_t__ max_nr_stripes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct r5conf *conf)
{
	while (conf->max_nr_stripes &&
	       FUNC0(conf))
		;

	FUNC1(conf->slab_cache);
	conf->slab_cache = NULL;
}