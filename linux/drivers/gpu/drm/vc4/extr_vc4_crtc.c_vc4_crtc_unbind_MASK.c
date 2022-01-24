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
struct vc4_crtc {int /*<<< orphan*/  base; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PV_INTEN ; 
 struct vc4_crtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct device *dev, struct device *master,
			    void *data)
{
	struct platform_device *pdev = FUNC3(dev);
	struct vc4_crtc *vc4_crtc = FUNC1(dev);

	FUNC4(&vc4_crtc->base);

	FUNC0(PV_INTEN, 0);

	FUNC2(pdev, NULL);
}