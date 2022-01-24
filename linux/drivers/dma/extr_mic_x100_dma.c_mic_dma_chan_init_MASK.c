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
struct mic_dma_chan {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mic_dma_chan*) ; 
 int FUNC1 (struct mic_dma_chan*) ; 
 int FUNC2 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct mic_dma_chan*) ; 

__attribute__((used)) static int FUNC5(struct mic_dma_chan *ch)
{
	int ret = FUNC0(ch);

	if (ret)
		goto ring_error;
	ret = FUNC1(ch);
	if (ret)
		goto status_error;
	ret = FUNC2(ch);
	if (ret)
		goto chan_error;
	return ret;
chan_error:
	FUNC4(ch);
status_error:
	FUNC3(ch);
ring_error:
	return ret;
}