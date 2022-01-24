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
struct fw_transaction {int is_split_transaction; int /*<<< orphan*/  split_timeout_timer; int /*<<< orphan*/  link; } ;
struct fw_card {int /*<<< orphan*/  lock; scalar_t__ split_timeout_jiffies; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct fw_transaction *t,
					    struct fw_card *card)
{
	unsigned long flags;

	FUNC3(&card->lock, flags);

	if (FUNC1(&t->link) || FUNC0(t->is_split_transaction)) {
		FUNC4(&card->lock, flags);
		return;
	}

	t->is_split_transaction = true;
	FUNC2(&t->split_timeout_timer,
		  jiffies + card->split_timeout_jiffies);

	FUNC4(&card->lock, flags);
}