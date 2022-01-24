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
typedef  int u32 ;
struct mtk_hsdma_device {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MTK_HSDMA_GLO ; 
 int MTK_HSDMA_GLO_BUSY ; 
 int /*<<< orphan*/  MTK_HSDMA_TIMEOUT_POLL ; 
 int /*<<< orphan*/  MTK_HSDMA_USEC_POLL ; 
 int FUNC0 (scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct mtk_hsdma_device *hsdma)
{
	u32 status = 0;

	return FUNC0(hsdma->base + MTK_HSDMA_GLO, status,
				  !(status & MTK_HSDMA_GLO_BUSY),
				  MTK_HSDMA_USEC_POLL,
				  MTK_HSDMA_TIMEOUT_POLL);
}