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
struct scsi_cmnd {TYPE_1__* device; } ;
struct sbp2_logical_unit {int dummy; } ;
struct TYPE_2__ {struct sbp2_logical_unit* hostdata; } ;

/* Variables and functions */
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbp2_logical_unit*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbp2_logical_unit*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbp2_logical_unit*) ; 

__attribute__((used)) static int FUNC4(struct scsi_cmnd *cmd)
{
	struct sbp2_logical_unit *lu = cmd->device->hostdata;

	FUNC0(FUNC1(lu), "sbp2_scsi_abort\n");
	FUNC2(lu);
	FUNC3(lu);

	return SUCCESS;
}