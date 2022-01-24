#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {int /*<<< orphan*/  dev; struct atmel_hlcdc_dc* dev_private; } ;
struct atmel_hlcdc_dc {int /*<<< orphan*/  wq; TYPE_2__* hlcdc; TYPE_1__* desc; } ;
struct TYPE_4__ {int /*<<< orphan*/  sys_clk; int /*<<< orphan*/  periph_clk; } ;
struct TYPE_3__ {scalar_t__ fixed_clksrc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct drm_device *dev)
{
	struct atmel_hlcdc_dc *dc = dev->dev_private;

	FUNC6(dc->wq);
	FUNC4(dev);
	FUNC2(dev);
	FUNC5(dev);

	FUNC8(dev->dev);
	FUNC3(dev);
	FUNC9(dev->dev);

	dev->dev_private = NULL;

	FUNC7(dev->dev);
	FUNC0(dc->hlcdc->periph_clk);
	if (dc->desc->fixed_clksrc)
		FUNC0(dc->hlcdc->sys_clk);
	FUNC1(dc->wq);
}