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
struct dmz_metadata {int /*<<< orphan*/  mblk_shrinker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dmz_metadata *zmd)
{
	FUNC2(&zmd->mblk_shrinker);
	FUNC0(zmd);
	FUNC1(zmd);
}