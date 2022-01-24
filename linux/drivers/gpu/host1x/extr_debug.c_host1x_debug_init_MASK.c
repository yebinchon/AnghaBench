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
struct host1x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DEBUG_FS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x*) ; 

void FUNC2(struct host1x *host1x)
{
	if (FUNC0(CONFIG_DEBUG_FS))
		FUNC1(host1x);
}