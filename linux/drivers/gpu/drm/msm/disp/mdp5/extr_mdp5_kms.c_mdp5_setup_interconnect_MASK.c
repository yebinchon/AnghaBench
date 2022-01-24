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
struct icc_path {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct icc_path*) ; 
 int /*<<< orphan*/  FUNC1 (struct icc_path*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct icc_path*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct icc_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct icc_path* FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct icc_path *path0 = FUNC6(&pdev->dev, "mdp0-mem");
	struct icc_path *path1 = FUNC6(&pdev->dev, "mdp1-mem");
	struct icc_path *path_rot = FUNC6(&pdev->dev, "rotator-mem");

	if (FUNC0(path0))
		return FUNC3(path0);

	if (!path0) {
		/* no interconnect support is not necessarily a fatal
		 * condition, the platform may simply not have an
		 * interconnect driver yet.  But warn about it in case
		 * bootloader didn't setup bus clocks high enough for
		 * scanout.
		 */
		FUNC4(&pdev->dev, "No interconnect support may cause display underflows!\n");
		return 0;
	}

	FUNC5(path0, 0, FUNC2(6400));

	if (!FUNC1(path1))
		FUNC5(path1, 0, FUNC2(6400));
	if (!FUNC1(path_rot))
		FUNC5(path_rot, 0, FUNC2(6400));

	return 0;
}