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
typedef  int uint32_t ;
struct fsi_master {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct fsi_master*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct fsi_master *master, int link)
{
	uint32_t addr;
	__be32 cmd;

	addr = 0x4;
	cmd = FUNC0(0xc0de0000);

	return FUNC1(master, link, 0, addr, &cmd, sizeof(cmd));
}