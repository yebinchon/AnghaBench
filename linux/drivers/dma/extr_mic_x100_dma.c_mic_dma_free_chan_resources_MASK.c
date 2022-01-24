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
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct mic_dma_chan*) ; 
 struct mic_dma_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC3(struct dma_chan *ch)
{
	struct mic_dma_chan *mic_ch = FUNC2(ch);
	FUNC1(mic_ch);
	FUNC0(mic_ch);
}