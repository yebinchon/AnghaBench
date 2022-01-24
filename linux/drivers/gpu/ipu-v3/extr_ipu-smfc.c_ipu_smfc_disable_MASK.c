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
struct ipu_smfc_priv {scalar_t__ use_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  ipu; } ;
struct ipu_smfc {struct ipu_smfc_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPU_CONF_SMFC_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct ipu_smfc *smfc)
{
	struct ipu_smfc_priv *priv = smfc->priv;
	unsigned long flags;

	FUNC1(&priv->lock, flags);

	priv->use_count--;

	if (!priv->use_count)
		FUNC0(priv->ipu, IPU_CONF_SMFC_EN);

	if (priv->use_count < 0)
		priv->use_count = 0;

	FUNC2(&priv->lock, flags);

	return 0;
}