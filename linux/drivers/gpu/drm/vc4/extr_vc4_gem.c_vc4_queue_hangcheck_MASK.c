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
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;
struct vc4_dev {TYPE_1__ hangcheck; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct vc4_dev* FUNC3 (struct drm_device*) ; 

__attribute__((used)) static void
FUNC4(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC3(dev);

	FUNC0(&vc4->hangcheck.timer,
		  FUNC2(jiffies + FUNC1(100)));
}