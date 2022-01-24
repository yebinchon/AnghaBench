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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hsi_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hsi_controller* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hsi_controller*) ; 
 int /*<<< orphan*/  FUNC5 (struct hsi_controller*) ; 
 int /*<<< orphan*/  ssi_remove_ports ; 

__attribute__((used)) static int FUNC6(struct platform_device *pd)
{
	struct hsi_controller *ssi = FUNC1(pd);

	/* cleanup of of_platform_populate() call */
	FUNC0(&pd->dev, NULL, ssi_remove_ports);

#ifdef CONFIG_DEBUG_FS
	ssi_debug_remove_ctrl(ssi);
#endif
	FUNC5(ssi);
	FUNC2(pd, NULL);

	FUNC3(&pd->dev);

	return 0;
}