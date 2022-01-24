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
struct i2c_msg {int flags; int /*<<< orphan*/  addr; } ;
struct i2c_algo_pca_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char,int) ; 
 int I2C_M_RD ; 
 int I2C_PCA_CON_SI ; 
 int I2C_PCA_CON_STA ; 
 int I2C_PCA_CON_STO ; 
 int /*<<< orphan*/  I2C_PCA_DAT ; 
 int FUNC1 (struct i2c_msg*) ; 
 int FUNC2 (struct i2c_algo_pca_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_algo_pca_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_algo_pca_data*,int) ; 
 int FUNC5 (struct i2c_algo_pca_data*) ; 

__attribute__((used)) static int FUNC6(struct i2c_algo_pca_data *adap,
		       struct i2c_msg *msg)
{
	int sta = FUNC2(adap);
	int addr = FUNC1(msg);

	FUNC0("=== SLAVE ADDRESS %#04x+%c=%#04x\n",
	     msg->addr, msg->flags & I2C_M_RD ? 'R' : 'W', addr);

	FUNC3(adap, I2C_PCA_DAT, addr);

	sta &= ~(I2C_PCA_CON_STO|I2C_PCA_CON_STA|I2C_PCA_CON_SI);
	FUNC4(adap, sta);

	return FUNC5(adap);
}