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
typedef  int /*<<< orphan*/  u32 ;
struct imx_mu_priv {int /*<<< orphan*/  xcr_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX_MU_xCR ; 
 int /*<<< orphan*/  FUNC0 (struct imx_mu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_mu_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC4(struct imx_mu_priv *priv, u32 set, u32 clr)
{
	unsigned long flags;
	u32 val;

	FUNC2(&priv->xcr_lock, flags);
	val = FUNC0(priv, IMX_MU_xCR);
	val &= ~clr;
	val |= set;
	FUNC1(priv, val, IMX_MU_xCR);
	FUNC3(&priv->xcr_lock, flags);

	return val;
}