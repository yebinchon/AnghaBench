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
struct mipi_dsi_host {int dummy; } ;
struct TYPE_2__ {unsigned long mode_flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct mipi_dsi_host*) ; 

unsigned long FUNC1(struct mipi_dsi_host *host)
{
	return FUNC0(host)->mode_flags;
}