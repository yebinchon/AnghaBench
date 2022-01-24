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
struct mtk_cqdma_pchan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_CQDMA_HARD_RST_BIT ; 
 int /*<<< orphan*/  MTK_CQDMA_RESET ; 
 int FUNC0 (struct mtk_cqdma_pchan*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_cqdma_pchan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_cqdma_pchan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mtk_cqdma_pchan *pc)
{
	FUNC2(pc, MTK_CQDMA_RESET, MTK_CQDMA_HARD_RST_BIT);
	FUNC1(pc, MTK_CQDMA_RESET, MTK_CQDMA_HARD_RST_BIT);

	return FUNC0(pc, true);
}