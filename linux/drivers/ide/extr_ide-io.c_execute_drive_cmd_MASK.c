#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct ide_cmd {scalar_t__ protocol; } ;
typedef  int /*<<< orphan*/  ide_startstop_t ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ ide_drive_t ;
struct TYPE_10__ {struct ide_cmd* special; } ;
struct TYPE_9__ {scalar_t__ result; } ;

/* Variables and functions */
 scalar_t__ ATA_PROT_PIO ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct ide_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ide_cmd*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct ide_cmd*) ; 
 TYPE_3__* FUNC6 (struct request*) ; 
 int /*<<< orphan*/  ide_stopped ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (struct request*) ; 

__attribute__((used)) static ide_startstop_t FUNC9 (ide_drive_t *drive,
		struct request *rq)
{
	struct ide_cmd *cmd = FUNC6(rq)->special;

	if (cmd) {
		if (cmd->protocol == ATA_PROT_PIO) {
			FUNC4(cmd, FUNC1(rq) << 9);
			FUNC5(drive, cmd);
		}

		return FUNC2(drive, cmd);
	}

 	/*
 	 * NULL is actually a valid way of waiting for
 	 * all current requests to be flushed from the queue.
 	 */
#ifdef DEBUG
 	printk("%s: DRIVE_CMD (null)\n", drive->name);
#endif
	FUNC8(rq)->result = 0;
	FUNC3(drive, BLK_STS_OK, FUNC0(rq));

 	return ide_stopped;
}