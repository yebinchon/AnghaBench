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
typedef  size_t u8 ;
struct cyapa {int /*<<< orphan*/  client; scalar_t__ smbus; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_4__ {size_t cmd; } ;
struct TYPE_3__ {size_t cmd; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMBUS_READ ; 
 TYPE_2__* cyapa_i2c_cmds ; 
 TYPE_1__* cyapa_smbus_cmds ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static s32 FUNC2(struct cyapa *cyapa, u8 cmd_idx)
{
	u8 cmd;

	if (cyapa->smbus) {
		cmd = cyapa_smbus_cmds[cmd_idx].cmd;
		cmd = FUNC0(cmd, SMBUS_READ);
	} else {
		cmd = cyapa_i2c_cmds[cmd_idx].cmd;
	}
	return FUNC1(cyapa->client, cmd);
}