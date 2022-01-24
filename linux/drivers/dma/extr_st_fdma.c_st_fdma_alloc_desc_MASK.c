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
struct st_fdma_desc {int n_nodes; TYPE_1__* node; struct st_fdma_chan* fchan; } ;
struct st_fdma_chan {int /*<<< orphan*/  node_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdesc; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct st_fdma_desc*) ; 
 struct st_fdma_desc* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  node ; 
 int /*<<< orphan*/  FUNC4 (struct st_fdma_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct st_fdma_desc *FUNC5(struct st_fdma_chan *fchan,
					       int sg_len)
{
	struct st_fdma_desc *fdesc;
	int i;

	fdesc = FUNC3(FUNC4(fdesc, node, sg_len), GFP_NOWAIT);
	if (!fdesc)
		return NULL;

	fdesc->fchan = fchan;
	fdesc->n_nodes = sg_len;
	for (i = 0; i < sg_len; i++) {
		fdesc->node[i].desc = FUNC0(fchan->node_pool,
				GFP_NOWAIT, &fdesc->node[i].pdesc);
		if (!fdesc->node[i].desc)
			goto err;
	}
	return fdesc;

err:
	while (--i >= 0)
		FUNC1(fchan->node_pool, fdesc->node[i].desc,
			      fdesc->node[i].pdesc);
	FUNC2(fdesc);
	return NULL;
}