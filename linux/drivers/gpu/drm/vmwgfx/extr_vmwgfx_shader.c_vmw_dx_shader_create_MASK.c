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
struct vmw_resource {int /*<<< orphan*/  id; struct vmw_private* dev_priv; } ;
struct vmw_private {int /*<<< orphan*/  binding_mutex; } ;
struct vmw_dx_shader {int /*<<< orphan*/  id; int /*<<< orphan*/  committed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vmw_resource*) ; 
 struct vmw_dx_shader* FUNC4 (struct vmw_resource*) ; 
 scalar_t__ FUNC5 (struct vmw_resource*) ; 

__attribute__((used)) static int FUNC6(struct vmw_resource *res)
{
	struct vmw_private *dev_priv = res->dev_priv;
	struct vmw_dx_shader *shader = FUNC4(res);
	int ret = 0;

	FUNC0(!shader->committed);

	if (FUNC5(res)) {
		FUNC1(&dev_priv->binding_mutex);
		ret = FUNC3(res);
		FUNC2(&dev_priv->binding_mutex);
	}

	res->id = shader->id;
	return ret;
}