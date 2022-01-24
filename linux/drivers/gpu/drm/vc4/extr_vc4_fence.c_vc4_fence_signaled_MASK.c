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
struct vc4_fence {scalar_t__ seqno; int /*<<< orphan*/  dev; } ;
struct vc4_dev {scalar_t__ finished_seqno; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 struct vc4_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 struct vc4_fence* FUNC1 (struct dma_fence*) ; 

__attribute__((used)) static bool FUNC2(struct dma_fence *fence)
{
	struct vc4_fence *f = FUNC1(fence);
	struct vc4_dev *vc4 = FUNC0(f->dev);

	return vc4->finished_seqno >= f->seqno;
}