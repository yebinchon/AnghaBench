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
struct client_resource {int handle; } ;
struct client {int /*<<< orphan*/  lock; int /*<<< orphan*/  resource_idr; scalar_t__ in_shutdown; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ECANCELED ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct client*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct client_resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct client_resource*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct client *client,
			       struct client_resource *resource, gfp_t gfp_mask)
{
	bool preload = FUNC1(gfp_mask);
	unsigned long flags;
	int ret;

	if (preload)
		FUNC3(gfp_mask);
	FUNC6(&client->lock, flags);

	if (client->in_shutdown)
		ret = -ECANCELED;
	else
		ret = FUNC2(&client->resource_idr, resource, 0, 0,
				GFP_NOWAIT);
	if (ret >= 0) {
		resource->handle = ret;
		FUNC0(client);
		FUNC5(resource);
	}

	FUNC7(&client->lock, flags);
	if (preload)
		FUNC4();

	return ret < 0 ? ret : 0;
}