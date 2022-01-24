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
struct push_buffer {int /*<<< orphan*/  phys; int /*<<< orphan*/ * mapped; int /*<<< orphan*/  alloc_size; int /*<<< orphan*/  dma; } ;
struct host1x_cdma {int dummy; } ;
struct host1x {int /*<<< orphan*/  dev; int /*<<< orphan*/  iova; scalar_t__ domain; } ;

/* Variables and functions */
 struct host1x* FUNC0 (struct host1x_cdma*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct host1x_cdma* FUNC5 (struct push_buffer*) ; 

__attribute__((used)) static void FUNC6(struct push_buffer *pb)
{
	struct host1x_cdma *cdma = FUNC5(pb);
	struct host1x *host1x = FUNC0(cdma);

	if (!pb->mapped)
		return;

	if (host1x->domain) {
		FUNC3(host1x->domain, pb->dma, pb->alloc_size);
		FUNC2(&host1x->iova, FUNC4(&host1x->iova, pb->dma));
	}

	FUNC1(host1x->dev, pb->alloc_size, pb->mapped, pb->phys);

	pb->mapped = NULL;
	pb->phys = 0;
}