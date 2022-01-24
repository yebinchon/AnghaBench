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
struct stripe_head {int dummy; } ;
struct r5conf {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stripe_head*) ; 
 struct stripe_head* FUNC1 (struct r5conf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct stripe_head *
FUNC2(
		struct r5conf *conf,
		sector_t stripe_sect,
		int noblock)
{
	struct stripe_head *sh;

	sh = FUNC1(conf, stripe_sect, 0, noblock, 0);
	if (!sh)
		return NULL;  /* no more stripe available */

	FUNC0(sh);

	return sh;
}