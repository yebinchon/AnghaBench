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
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct dma_chan* FUNC0 (int /*<<< orphan*/ ) ; 
 struct dma_chan* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dma_device_list ; 
 int /*<<< orphan*/  dma_list_mutex ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct dma_chan *FUNC5(const dma_cap_mask_t *mask)
{
	struct dma_chan *chan;

	if (!mask)
		return FUNC0(-ENODEV);

	chan = FUNC1(mask, NULL, NULL, NULL);
	if (!chan) {
		FUNC3(&dma_list_mutex);
		if (FUNC2(&dma_device_list))
			chan = FUNC0(-EPROBE_DEFER);
		else
			chan = FUNC0(-ENODEV);
		FUNC4(&dma_list_mutex);
	}

	return chan;
}