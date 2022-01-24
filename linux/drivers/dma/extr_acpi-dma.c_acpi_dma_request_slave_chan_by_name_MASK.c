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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct dma_chan* FUNC0 (int /*<<< orphan*/ ) ; 
 struct dma_chan* FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*,int) ; 
 int FUNC3 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

struct dma_chan *FUNC5(struct device *dev,
		const char *name)
{
	int index;

	index = FUNC3(dev, "dma-names", name);
	if (index < 0) {
		if (!FUNC4(name, "tx"))
			index = 0;
		else if (!FUNC4(name, "rx"))
			index = 1;
		else
			return FUNC0(-ENODEV);
	}

	FUNC2(dev, "Looking for DMA channel \"%s\" at index %d...\n", name, index);
	return FUNC1(dev, index);
}