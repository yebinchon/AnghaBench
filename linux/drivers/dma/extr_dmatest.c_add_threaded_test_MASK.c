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
struct dmatest_params {int /*<<< orphan*/  polled; int /*<<< orphan*/  transfer_size; int /*<<< orphan*/  alignment; int /*<<< orphan*/  norandom; int /*<<< orphan*/  noverify; int /*<<< orphan*/  timeout; int /*<<< orphan*/  pq_sources; int /*<<< orphan*/  xor_sources; int /*<<< orphan*/  iterations; int /*<<< orphan*/  max_channels; int /*<<< orphan*/  threads_per_chan; int /*<<< orphan*/  device; int /*<<< orphan*/  channel; int /*<<< orphan*/  buf_size; } ;
struct dmatest_info {struct dmatest_params params; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int /*<<< orphan*/  DMA_MEMSET ; 
 int /*<<< orphan*/  DMA_PQ ; 
 int /*<<< orphan*/  DMA_XOR ; 
 int /*<<< orphan*/  alignment ; 
 int /*<<< orphan*/  iterations ; 
 int /*<<< orphan*/  max_channels ; 
 int /*<<< orphan*/  norandom ; 
 int /*<<< orphan*/  noverify ; 
 int /*<<< orphan*/  polled ; 
 int /*<<< orphan*/  pq_sources ; 
 int /*<<< orphan*/  FUNC0 (struct dmatest_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  test_buf_size ; 
 int /*<<< orphan*/  test_channel ; 
 int /*<<< orphan*/  test_device ; 
 int /*<<< orphan*/  threads_per_chan ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  transfer_size ; 
 int /*<<< orphan*/  xor_sources ; 

__attribute__((used)) static void FUNC3(struct dmatest_info *info)
{
	struct dmatest_params *params = &info->params;

	/* Copy test parameters */
	params->buf_size = test_buf_size;
	FUNC2(params->channel, FUNC1(test_channel), sizeof(params->channel));
	FUNC2(params->device, FUNC1(test_device), sizeof(params->device));
	params->threads_per_chan = threads_per_chan;
	params->max_channels = max_channels;
	params->iterations = iterations;
	params->xor_sources = xor_sources;
	params->pq_sources = pq_sources;
	params->timeout = timeout;
	params->noverify = noverify;
	params->norandom = norandom;
	params->alignment = alignment;
	params->transfer_size = transfer_size;
	params->polled = polled;

	FUNC0(info, DMA_MEMCPY);
	FUNC0(info, DMA_MEMSET);
	FUNC0(info, DMA_XOR);
	FUNC0(info, DMA_PQ);
}