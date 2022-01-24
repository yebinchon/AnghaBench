#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seqno_fence {TYPE_1__* ops; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {long (* wait ) (struct dma_fence*,int,long) ;} ;

/* Variables and functions */
 long FUNC0 (struct dma_fence*,int,long) ; 
 struct seqno_fence* FUNC1 (struct dma_fence*) ; 

__attribute__((used)) static signed long FUNC2(struct dma_fence *fence, bool intr,
			      signed long timeout)
{
	struct seqno_fence *f = FUNC1(fence);

	return f->ops->wait(fence, intr, timeout);
}