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
struct vmw_resource {int id; TYPE_1__* func; struct vmw_private* dev_priv; } ;
struct vmw_private {int /*<<< orphan*/  resource_lock; struct idr* res_idr; } ;
struct idr {int dummy; } ;
struct TYPE_2__ {size_t res_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int FUNC1 (struct idr*,struct vmw_resource*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct vmw_resource *res)
{
	struct vmw_private *dev_priv = res->dev_priv;
	int ret;
	struct idr *idr = &dev_priv->res_idr[res->func->res_type];

	FUNC0(res->id != -1);

	FUNC2(GFP_KERNEL);
	FUNC4(&dev_priv->resource_lock);

	ret = FUNC1(idr, res, 1, 0, GFP_NOWAIT);
	if (ret >= 0)
		res->id = ret;

	FUNC5(&dev_priv->resource_lock);
	FUNC3();
	return ret < 0 ? ret : 0;
}