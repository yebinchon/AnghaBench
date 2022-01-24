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
struct ps2if {int /*<<< orphan*/  io; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct ps2if* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct ps2if *ps2if = FUNC0(pdev);

	FUNC1(ps2if->io);

	return 0;
}