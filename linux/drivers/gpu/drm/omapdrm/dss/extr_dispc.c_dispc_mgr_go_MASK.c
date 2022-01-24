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
struct dispc_device {int dummy; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_MGR_FLD_GO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct dispc_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*,int) ; 
 TYPE_1__* mgr_desc ; 
 int /*<<< orphan*/  FUNC4 (struct dispc_device*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct dispc_device *dispc, enum omap_channel channel)
{
	FUNC1(!FUNC3(dispc, channel));
	FUNC1(FUNC2(dispc, channel));

	FUNC0("GO %s\n", mgr_desc[channel].name);

	FUNC4(dispc, channel, DISPC_MGR_FLD_GO, 1);
}