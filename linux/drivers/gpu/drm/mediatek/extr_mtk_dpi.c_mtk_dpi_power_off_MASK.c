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
struct mtk_dpi {scalar_t__ refcount; int /*<<< orphan*/  engine_clk; int /*<<< orphan*/  pixel_clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_dpi*) ; 

__attribute__((used)) static void FUNC3(struct mtk_dpi *dpi)
{
	if (FUNC0(dpi->refcount == 0))
		return;

	if (--dpi->refcount != 0)
		return;

	FUNC2(dpi);
	FUNC1(dpi->pixel_clk);
	FUNC1(dpi->engine_clk);
}