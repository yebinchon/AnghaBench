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
struct cache {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache*,struct bio*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct cache *cache, struct bio *bio,
					  dm_oblock_t oblock)
{
	// FIXME: check_if_tick_bio_needed() is called way too much through this interface
	FUNC0(cache, bio, oblock, true);
}