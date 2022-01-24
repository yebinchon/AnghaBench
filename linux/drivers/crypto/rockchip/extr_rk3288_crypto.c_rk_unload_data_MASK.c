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
struct scatterlist {int dummy; } ;
struct rk_crypto_info {int /*<<< orphan*/  dev; struct scatterlist sg_tmp; struct scatterlist* sg_dst; scalar_t__ aligned; struct scatterlist* sg_src; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct rk_crypto_info *dev)
{
	struct scatterlist *sg_in, *sg_out;

	sg_in = dev->aligned ? dev->sg_src : &dev->sg_tmp;
	FUNC0(dev->dev, sg_in, 1, DMA_TO_DEVICE);

	if (dev->sg_dst) {
		sg_out = dev->aligned ? dev->sg_dst : &dev->sg_tmp;
		FUNC0(dev->dev, sg_out, 1, DMA_FROM_DEVICE);
	}
}