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

/* Variables and functions */
 scalar_t__ DM_MAPIO_REMAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*,struct bio*) ; 
 scalar_t__ FUNC2 (struct cache*,struct bio*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC3(struct cache *cache, struct bio *bio)
{
	bool commit_needed;

	if (FUNC2(cache, bio, FUNC1(cache, bio), &commit_needed) == DM_MAPIO_REMAPPED)
		FUNC0(bio);

	return commit_needed;
}