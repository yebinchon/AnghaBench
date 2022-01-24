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
struct ipu_ic_priv {int /*<<< orphan*/  irt_use_count; int /*<<< orphan*/  ipu; } ;
struct ipu_ic {struct ipu_ic_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPU_CONF_ROT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ipu_ic *ic)
{
	struct ipu_ic_priv *priv = ic->priv;

	if (!priv->irt_use_count)
		FUNC0(priv->ipu, IPU_CONF_ROT_EN);

	priv->irt_use_count++;
}