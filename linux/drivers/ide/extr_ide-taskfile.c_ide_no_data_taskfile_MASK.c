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
struct ide_cmd {int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_PROT_NODATA ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ide_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1(ide_drive_t *drive, struct ide_cmd *cmd)
{
	cmd->protocol = ATA_PROT_NODATA;

	return FUNC0(drive, cmd, NULL, 0);
}