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
struct mtk_dpi {int refcount; int /*<<< orphan*/  engine_clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  pixel_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_dpi*) ; 

__attribute__((used)) static int FUNC4(struct mtk_dpi *dpi)
{
	int ret;

	if (++dpi->refcount != 1)
		return 0;

	ret = FUNC1(dpi->engine_clk);
	if (ret) {
		FUNC2(dpi->dev, "Failed to enable engine clock: %d\n", ret);
		goto err_refcount;
	}

	ret = FUNC1(dpi->pixel_clk);
	if (ret) {
		FUNC2(dpi->dev, "Failed to enable pixel clock: %d\n", ret);
		goto err_pixel;
	}

	FUNC3(dpi);
	return 0;

err_pixel:
	FUNC0(dpi->engine_clk);
err_refcount:
	dpi->refcount--;
	return ret;
}