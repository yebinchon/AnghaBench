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
struct dmm {int /*<<< orphan*/  wa_dma_handle; int /*<<< orphan*/  wa_dma_data; int /*<<< orphan*/  dev; int /*<<< orphan*/  wa_dma_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dmm *dmm)
{
	FUNC1(dmm->wa_dma_chan);

	FUNC0(dmm->dev, 4, dmm->wa_dma_data, dmm->wa_dma_handle);
}