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
struct dmz_mblock {int /*<<< orphan*/  state; } ;
struct bio {scalar_t__ bi_status; struct dmz_mblock* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_META_ERROR ; 
 int DMZ_META_READING ; 
 int DMZ_META_WRITING ; 
 scalar_t__ REQ_OP_WRITE ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(struct bio *bio)
{
	struct dmz_mblock *mblk = bio->bi_private;
	int flag;

	if (bio->bi_status)
		FUNC3(DMZ_META_ERROR, &mblk->state);

	if (FUNC0(bio) == REQ_OP_WRITE)
		flag = DMZ_META_WRITING;
	else
		flag = DMZ_META_READING;

	FUNC2(flag, &mblk->state);
	FUNC4();
	FUNC5(&mblk->state, flag);

	FUNC1(bio);
}