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
struct ipu_dmfc_priv {scalar_t__ use_count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  ipu; } ;
struct dmfc_channel {struct ipu_dmfc_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPU_CONF_DMFC_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dmfc_channel *dmfc)
{
	struct ipu_dmfc_priv *priv = dmfc->priv;

	FUNC1(&priv->mutex);

	priv->use_count--;

	if (!priv->use_count)
		FUNC0(priv->ipu, IPU_CONF_DMFC_EN);

	if (priv->use_count < 0)
		priv->use_count = 0;

	FUNC2(&priv->mutex);
}