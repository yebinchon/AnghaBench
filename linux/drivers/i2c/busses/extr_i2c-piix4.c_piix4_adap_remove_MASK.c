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
struct i2c_piix4_adapdata {int port; scalar_t__ smba; } ;
struct i2c_adapter {int port; scalar_t__ smba; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMBIOSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_piix4_adapdata*) ; 
 struct i2c_piix4_adapdata* FUNC1 (struct i2c_piix4_adapdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_piix4_adapdata*) ; 
 int piix4_port_shift_sb800 ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct i2c_adapter *adap)
{
	struct i2c_piix4_adapdata *adapdata = FUNC1(adap);

	if (adapdata->smba) {
		FUNC0(adap);
		if (adapdata->port == (0 << piix4_port_shift_sb800))
			FUNC3(adapdata->smba, SMBIOSIZE);
		FUNC2(adapdata);
		FUNC2(adap);
	}
}