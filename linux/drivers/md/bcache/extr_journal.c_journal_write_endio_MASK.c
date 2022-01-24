#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct journal_write {TYPE_2__* c; } ;
struct bio {int /*<<< orphan*/  bi_status; struct journal_write* bi_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  io; } ;
struct TYPE_4__ {TYPE_1__ journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct bio *bio)
{
	struct journal_write *w = bio->bi_private;

	FUNC0(bio->bi_status, w->c, "journal io error");
	FUNC1(&w->c->journal.io);
}