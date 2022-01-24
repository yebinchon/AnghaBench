#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  client; } ;
struct log_c {TYPE_1__ io_req; int /*<<< orphan*/  disk_header; int /*<<< orphan*/  log_dev; int /*<<< orphan*/  ti; } ;
struct dm_dirty_log {scalar_t__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct log_c*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dm_dirty_log *log)
{
	struct log_c *lc = (struct log_c *) log->context;

	FUNC2(lc->ti, lc->log_dev);
	FUNC3(lc->disk_header);
	FUNC1(lc->io_req.client);
	FUNC0(lc);
}