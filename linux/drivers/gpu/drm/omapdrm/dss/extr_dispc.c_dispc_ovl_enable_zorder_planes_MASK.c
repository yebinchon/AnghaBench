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
struct dispc_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FEAT_ALPHA_FREE_ZORDER ; 
 int /*<<< orphan*/  FUNC1 (struct dispc_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dispc_device *dispc)
{
	int i;

	if (!FUNC3(dispc, FEAT_ALPHA_FREE_ZORDER))
		return;

	for (i = 0; i < FUNC2(dispc); i++)
		FUNC1(dispc, FUNC0(i), 1, 25, 25);
}