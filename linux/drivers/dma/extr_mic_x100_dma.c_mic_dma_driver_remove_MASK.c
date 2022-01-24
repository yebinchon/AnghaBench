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
struct mic_dma_device {int /*<<< orphan*/  dbg_dir; } ;
struct mbus_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mic_dma_device* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mic_dma_device*) ; 

__attribute__((used)) static void FUNC3(struct mbus_device *mbdev)
{
	struct mic_dma_device *mic_dma_dev;

	mic_dma_dev = FUNC1(&mbdev->dev);
	FUNC0(mic_dma_dev->dbg_dir);
	FUNC2(mic_dma_dev);
}