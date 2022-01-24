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
struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCALER_DISPCTRL ; 
 int SCALER_DISPCTRL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct vc4_dev* FUNC2 (struct drm_device*) ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC2(dev);

	FUNC1((FUNC0(SCALER_DISPCTRL) & SCALER_DISPCTRL_ENABLE) !=
		     SCALER_DISPCTRL_ENABLE);
}