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
struct vmw_resource {int id; struct vmw_private* dev_priv; } ;
struct vmw_private {int /*<<< orphan*/  binding_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_resource*) ; 

__attribute__((used)) static void FUNC4(struct vmw_resource *res)
{
	struct vmw_private *dev_priv = res->dev_priv;

	FUNC1(&dev_priv->binding_mutex);
	FUNC0(FUNC3(res));
	res->id = -1;
	FUNC2(&dev_priv->binding_mutex);
}