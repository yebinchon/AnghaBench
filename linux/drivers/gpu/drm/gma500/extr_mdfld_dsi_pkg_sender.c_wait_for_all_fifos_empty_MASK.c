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
struct mdfld_dsi_pkg_sender {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct mdfld_dsi_pkg_sender*,int) ; 

__attribute__((used)) static int FUNC2(struct mdfld_dsi_pkg_sender *sender)
{
	return FUNC1(sender, (FUNC0(2) | FUNC0(10) | FUNC0(18) |
						FUNC0(26) | FUNC0(27) | FUNC0(28)));
}