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
struct vmw_private {int /*<<< orphan*/  fifo; scalar_t__ cman; int /*<<< orphan*/  fman; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_private*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vmw_private *dev_priv)
{
	FUNC1(dev_priv->fman);
	if (dev_priv->cman)
		FUNC0(dev_priv->cman);

	FUNC2(dev_priv, &dev_priv->fifo);
}