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
struct i801_priv {int features; int original_slvcmd; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int FEATURE_HOST_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (struct i801_priv*) ; 
 int SMBSLVCMD_HST_NTFY_INTREN ; 
 int /*<<< orphan*/  FUNC1 (struct i801_priv*) ; 
 int SMBSLVSTS_HST_NTFY_STS ; 
 struct i801_priv* FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct i2c_adapter *adapter)
{
	struct i801_priv *priv = FUNC2(adapter);

	if (!(priv->features & FEATURE_HOST_NOTIFY))
		return;

	if (!(SMBSLVCMD_HST_NTFY_INTREN & priv->original_slvcmd))
		FUNC3(SMBSLVCMD_HST_NTFY_INTREN | priv->original_slvcmd,
		       FUNC0(priv));

	/* clear Host Notify bit to allow a new notification */
	FUNC3(SMBSLVSTS_HST_NTFY_STS, FUNC1(priv));
}