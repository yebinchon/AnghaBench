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
struct dmz_metadata {int /*<<< orphan*/  nr_mblks; } ;
struct dmz_mblock {int /*<<< orphan*/  page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dmz_mblock*) ; 

__attribute__((used)) static void FUNC3(struct dmz_metadata *zmd, struct dmz_mblock *mblk)
{
	FUNC0(mblk->page, 0);
	FUNC2(mblk);

	FUNC1(&zmd->nr_mblks);
}