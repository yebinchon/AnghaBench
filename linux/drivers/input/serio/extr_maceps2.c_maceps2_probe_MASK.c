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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * maceps2_port ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev)
{
	maceps2_port[0] = FUNC1(0);
	maceps2_port[1] = FUNC1(1);
	if (!maceps2_port[0] || !maceps2_port[1]) {
		FUNC0(maceps2_port[0]);
		FUNC0(maceps2_port[1]);
		return -ENOMEM;
	}

	FUNC2(maceps2_port[0]);
	FUNC2(maceps2_port[1]);

	return 0;
}