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
struct ipu_ic_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  use_count; int /*<<< orphan*/  ipu; } ;
struct ipu_ic {scalar_t__ rotation; struct ipu_ic_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPU_CONF_IC_EN ; 
 int /*<<< orphan*/  FUNC0 (struct ipu_ic*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct ipu_ic *ic)
{
	struct ipu_ic_priv *priv = ic->priv;
	unsigned long flags;

	FUNC2(&priv->lock, flags);

	if (!priv->use_count)
		FUNC1(priv->ipu, IPU_CONF_IC_EN);

	priv->use_count++;

	if (ic->rotation)
		FUNC0(ic);

	FUNC3(&priv->lock, flags);

	return 0;
}