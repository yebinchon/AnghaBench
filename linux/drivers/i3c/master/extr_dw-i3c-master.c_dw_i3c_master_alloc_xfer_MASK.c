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
struct dw_i3c_xfer {unsigned int ncmds; int /*<<< orphan*/  ret; int /*<<< orphan*/  node; } ;
struct dw_i3c_master {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmds ; 
 struct dw_i3c_xfer* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_i3c_xfer*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static struct dw_i3c_xfer *
FUNC3(struct dw_i3c_master *master, unsigned int ncmds)
{
	struct dw_i3c_xfer *xfer;

	xfer = FUNC1(FUNC2(xfer, cmds, ncmds), GFP_KERNEL);
	if (!xfer)
		return NULL;

	FUNC0(&xfer->node);
	xfer->ncmds = ncmds;
	xfer->ret = -ETIMEDOUT;

	return xfer;
}