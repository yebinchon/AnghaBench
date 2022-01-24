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
struct vmw_private {int /*<<< orphan*/  cmdbuf_mutex; scalar_t__ query_cid_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmw_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct vmw_private *dev_priv)
{
	FUNC1(&dev_priv->cmdbuf_mutex);
	if (dev_priv->query_cid_valid)
		FUNC0(dev_priv, NULL);
	FUNC2(&dev_priv->cmdbuf_mutex);
}