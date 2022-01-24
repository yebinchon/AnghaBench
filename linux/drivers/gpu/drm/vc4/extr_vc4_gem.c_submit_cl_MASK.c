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
typedef  int /*<<< orphan*/  uint32_t ;
struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vc4_dev* FUNC3 (struct drm_device*) ; 

__attribute__((used)) static void
FUNC4(struct drm_device *dev, uint32_t thread, uint32_t start, uint32_t end)
{
	struct vc4_dev *vc4 = FUNC3(dev);

	/* Set the current and end address of the control list.
	 * Writing the end register is what starts the job.
	 */
	FUNC2(FUNC0(thread), start);
	FUNC2(FUNC1(thread), end);
}