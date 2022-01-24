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
struct vmw_private {int /*<<< orphan*/  cmdbuf_mutex; } ;
typedef  enum vmw_res_type { ____Placeholder_vmw_res_type } vmw_res_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int vmw_res_max ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_private*,int) ; 

void FUNC3(struct vmw_private *dev_priv)
{
	enum vmw_res_type type;

	FUNC0(&dev_priv->cmdbuf_mutex);

	for (type = 0; type < vmw_res_max; ++type)
		FUNC2(dev_priv, type);

	FUNC1(&dev_priv->cmdbuf_mutex);
}