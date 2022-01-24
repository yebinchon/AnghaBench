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
struct stripe_head {struct r5conf* raid_conf; } ;
struct r5conf {scalar_t__ log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct stripe_head*) ; 
 scalar_t__ FUNC2 (struct r5conf*) ; 

__attribute__((used)) static inline void FUNC3(struct stripe_head *sh)
{
	struct r5conf *conf = sh->raid_conf;

	if (conf->log)
		FUNC1(sh);
	else if (FUNC2(conf))
		FUNC0(sh);
}