#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct idma64_chan {TYPE_2__ vchan; TYPE_1__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (struct idma64_chan*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct idma64_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct idma64_chan* FUNC6 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dma_chan *chan)
{
	struct idma64_chan *idma64c = FUNC6(chan);
	unsigned long flags;
	FUNC0(head);

	FUNC4(&idma64c->vchan.lock, flags);
	FUNC1(idma64c, true);
	FUNC2(idma64c);
	if (idma64c->desc) {
		FUNC3(&idma64c->desc->vdesc);
		idma64c->desc = NULL;
	}
	FUNC8(&idma64c->vchan, &head);
	FUNC5(&idma64c->vchan.lock, flags);

	FUNC7(&idma64c->vchan, &head);
	return 0;
}