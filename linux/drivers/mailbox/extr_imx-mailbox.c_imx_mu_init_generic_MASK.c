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
struct imx_mu_priv {scalar_t__ side_b; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX_MU_xCR ; 
 int /*<<< orphan*/  FUNC0 (struct imx_mu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct imx_mu_priv *priv)
{
	if (priv->side_b)
		return;

	/* Set default MU configuration */
	FUNC0(priv, 0, IMX_MU_xCR);
}