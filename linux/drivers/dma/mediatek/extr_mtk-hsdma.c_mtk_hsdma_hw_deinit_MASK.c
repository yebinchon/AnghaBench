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
struct mtk_hsdma_device {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_HSDMA_GLO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hsdma_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_hsdma_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mtk_hsdma_device *hsdma)
{
	FUNC2(hsdma, MTK_HSDMA_GLO, 0);

	FUNC0(hsdma->clk);

	FUNC4(FUNC1(hsdma));
	FUNC3(FUNC1(hsdma));

	return 0;
}