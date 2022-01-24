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
struct r5l_log {struct r5l_io_unit* current_io; } ;
struct r5l_io_unit {int need_split_bio; int /*<<< orphan*/  current_bio; int /*<<< orphan*/  split_bio; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r5l_log*,struct r5l_io_unit*) ; 
 int /*<<< orphan*/  FUNC5 (struct r5l_log*) ; 

__attribute__((used)) static void FUNC6(struct r5l_log *log, struct page *page)
{
	struct r5l_io_unit *io = log->current_io;

	if (io->need_split_bio) {
		FUNC1(io->split_bio);
		io->split_bio = io->current_bio;
		io->current_bio = FUNC5(log);
		FUNC3(io->current_bio, io->split_bio);
		io->need_split_bio = false;
	}

	if (!FUNC2(io->current_bio, page, PAGE_SIZE, 0))
		FUNC0();

	FUNC4(log, io);
}