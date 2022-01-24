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
typedef  int /*<<< orphan*/  u32 ;
struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCALER_DISPCTRL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SCALER_DISPSTAT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct vc4_dev* FUNC4 (struct drm_device*) ; 

void FUNC5(struct drm_device *dev, int channel)
{
	struct vc4_dev *vc4 = FUNC4(dev);
	u32 dispctrl = FUNC0(SCALER_DISPCTRL);

	dispctrl |= FUNC2(channel);

	FUNC1(SCALER_DISPSTAT,
		  FUNC3(channel));
	FUNC1(SCALER_DISPCTRL, dispctrl);
}