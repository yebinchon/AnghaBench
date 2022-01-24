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
struct cdns_i3c_master {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ CTRL ; 
 int CTRL_DEV_EN ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct cdns_i3c_master *master)
{
	FUNC1(FUNC0(master->regs + CTRL) | CTRL_DEV_EN, master->regs + CTRL);
}