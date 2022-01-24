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
struct regmap {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct atmel_hlcdc_crtc {TYPE_2__* dc; } ;
struct TYPE_4__ {TYPE_1__* hlcdc; } ;
struct TYPE_3__ {int /*<<< orphan*/  sys_clk; struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_HLCDC_DIS ; 
 unsigned int ATMEL_HLCDC_DISP ; 
 unsigned int ATMEL_HLCDC_PIXEL_CLK ; 
 int /*<<< orphan*/  ATMEL_HLCDC_SR ; 
 unsigned int ATMEL_HLCDC_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct atmel_hlcdc_crtc* FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct regmap*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC10(struct drm_crtc *c,
					    struct drm_crtc_state *old_state)
{
	struct drm_device *dev = c->dev;
	struct atmel_hlcdc_crtc *crtc = FUNC2(c);
	struct regmap *regmap = crtc->dc->hlcdc->regmap;
	unsigned int status;

	FUNC3(c);

	FUNC6(dev->dev);

	FUNC9(regmap, ATMEL_HLCDC_DIS, ATMEL_HLCDC_DISP);
	while (!FUNC8(regmap, ATMEL_HLCDC_SR, &status) &&
	       (status & ATMEL_HLCDC_DISP))
		FUNC1();

	FUNC9(regmap, ATMEL_HLCDC_DIS, ATMEL_HLCDC_SYNC);
	while (!FUNC8(regmap, ATMEL_HLCDC_SR, &status) &&
	       (status & ATMEL_HLCDC_SYNC))
		FUNC1();

	FUNC9(regmap, ATMEL_HLCDC_DIS, ATMEL_HLCDC_PIXEL_CLK);
	while (!FUNC8(regmap, ATMEL_HLCDC_SR, &status) &&
	       (status & ATMEL_HLCDC_PIXEL_CLK))
		FUNC1();

	FUNC0(crtc->dc->hlcdc->sys_clk);
	FUNC4(dev->dev);

	FUNC5(dev->dev);

	FUNC7(dev->dev);
}