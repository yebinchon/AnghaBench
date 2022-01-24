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
struct device {int dummy; } ;
struct ablkcipher_request {scalar_t__ src; scalar_t__ dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(struct device *dev,
			   struct ablkcipher_request *req)
{
	if (req->src == req->dst) {
		FUNC0(dev, req->src, FUNC1(req->src),
				   DMA_BIDIRECTIONAL);
	} else {
		FUNC0(dev, req->src, FUNC1(req->src),
				   DMA_TO_DEVICE);
		FUNC0(dev, req->dst, FUNC1(req->dst),
				   DMA_FROM_DEVICE);
	}
}