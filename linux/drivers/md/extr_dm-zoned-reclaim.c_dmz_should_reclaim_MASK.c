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
struct dmz_reclaim {struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;

/* Variables and functions */
 unsigned int DMZ_RECLAIM_HIGH_UNMAP_RND ; 
 unsigned int DMZ_RECLAIM_LOW_UNMAP_RND ; 
 unsigned int FUNC0 (struct dmz_metadata*) ; 
 unsigned int FUNC1 (struct dmz_metadata*) ; 
 scalar_t__ FUNC2 (struct dmz_reclaim*) ; 

__attribute__((used)) static bool FUNC3(struct dmz_reclaim *zrc)
{
	struct dmz_metadata *zmd = zrc->metadata;
	unsigned int nr_rnd = FUNC0(zmd);
	unsigned int nr_unmap_rnd = FUNC1(zmd);
	unsigned int p_unmap_rnd = nr_unmap_rnd * 100 / nr_rnd;

	/* Reclaim when idle */
	if (FUNC2(zrc) && nr_unmap_rnd < nr_rnd)
		return true;

	/* If there are still plenty of random zones, do not reclaim */
	if (p_unmap_rnd >= DMZ_RECLAIM_HIGH_UNMAP_RND)
		return false;

	/*
	 * If the percentage of unmapped random zones is low,
	 * reclaim even if the target is busy.
	 */
	return p_unmap_rnd <= DMZ_RECLAIM_LOW_UNMAP_RND;
}