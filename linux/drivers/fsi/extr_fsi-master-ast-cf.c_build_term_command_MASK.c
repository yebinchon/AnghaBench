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
typedef  int /*<<< orphan*/  uint8_t ;
struct fsi_msg {scalar_t__ msg; scalar_t__ bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSI_CMD_TERM ; 
 int /*<<< orphan*/  FUNC0 (struct fsi_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_msg*) ; 

__attribute__((used)) static void FUNC3(struct fsi_msg *cmd, uint8_t slave_id)
{
	cmd->bits = 0;
	cmd->msg = 0;

	FUNC1(cmd, slave_id, 2);
	FUNC1(cmd, FSI_CMD_TERM, 6);
	FUNC2(cmd);
	FUNC0(cmd);
}