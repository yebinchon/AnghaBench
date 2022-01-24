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
struct iforce {int /*<<< orphan*/  xmit_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFORCE_XMIT_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct iforce*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct iforce *iforce)
{
	if (!FUNC1(IFORCE_XMIT_RUNNING, iforce->xmit_flags))
		FUNC0(iforce);
}