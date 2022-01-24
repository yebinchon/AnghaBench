#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i2c_adapter {int /*<<< orphan*/  timeout; } ;
struct i801_priv {int features; int status; TYPE_1__* pci_dev; int /*<<< orphan*/  waitq; struct i2c_adapter adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FEATURE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct i801_priv*) ; 
 int SMBHSTCNT_INTREN ; 
 int SMBHSTCNT_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i801_priv*,int) ; 
 int FUNC3 (struct i801_priv*) ; 
 int FUNC4 (struct i801_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i801_priv *priv, int xact)
{
	int status;
	int result;
	const struct i2c_adapter *adap = &priv->adapter;

	result = FUNC3(priv);
	if (result < 0)
		return result;

	if (priv->features & FEATURE_IRQ) {
		FUNC5(xact | SMBHSTCNT_INTREN | SMBHSTCNT_START,
		       FUNC0(priv));
		result = FUNC6(priv->waitq,
					    (status = priv->status),
					    adap->timeout);
		if (!result) {
			status = -ETIMEDOUT;
			FUNC1(&priv->pci_dev->dev,
				 "Timeout waiting for interrupt!\n");
		}
		priv->status = 0;
		return FUNC2(priv, status);
	}

	/* the current contents of SMBHSTCNT can be overwritten, since PEC,
	 * SMBSCMD are passed in xact */
	FUNC5(xact | SMBHSTCNT_START, FUNC0(priv));

	status = FUNC4(priv);
	return FUNC2(priv, status);
}