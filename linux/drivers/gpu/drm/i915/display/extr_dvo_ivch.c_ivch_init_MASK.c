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
typedef  int u16 ;
struct ivch_priv {int quiet; int width; int height; int* reg_backup; } ;
struct intel_dvo_device {int slave_addr; struct ivch_priv* dev_priv; struct i2c_adapter* i2c_bus; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VR00 ; 
 int VR00_BASE_ADDRESS_MASK ; 
 int /*<<< orphan*/  VR20 ; 
 int /*<<< orphan*/  VR21 ; 
 int /*<<< orphan*/ * backup_addresses ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dvo_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dvo_device*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivch_priv*) ; 
 struct ivch_priv* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct intel_dvo_device *dvo,
		      struct i2c_adapter *adapter)
{
	struct ivch_priv *priv;
	u16 temp;
	int i;

	priv = FUNC5(sizeof(struct ivch_priv), GFP_KERNEL);
	if (priv == NULL)
		return false;

	dvo->i2c_bus = adapter;
	dvo->dev_priv = priv;
	priv->quiet = true;

	if (!FUNC3(dvo, VR00, &temp))
		goto out;
	priv->quiet = false;

	/* Since the identification bits are probably zeroes, which doesn't seem
	 * very unique, check that the value in the base address field matches
	 * the address it's responding on.
	 */
	if ((temp & VR00_BASE_ADDRESS_MASK) != dvo->slave_addr) {
		FUNC1("ivch detect failed due to address mismatch "
			  "(%d vs %d)\n",
			  (temp & VR00_BASE_ADDRESS_MASK), dvo->slave_addr);
		goto out;
	}

	FUNC3(dvo, VR20, &priv->width);
	FUNC3(dvo, VR21, &priv->height);

	/* Make a backup of the registers to be able to restore them
	 * upon suspend.
	 */
	for (i = 0; i < FUNC0(backup_addresses); i++)
		FUNC3(dvo, backup_addresses[i], priv->reg_backup + i);

	FUNC2(dvo);

	return true;

out:
	FUNC4(priv);
	return false;
}