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
struct TYPE_2__ {int (* read_byte ) (struct i2c_pca_pf_data*,int /*<<< orphan*/ ) ;} ;
struct i2c_pca_pf_data {int /*<<< orphan*/  wait; TYPE_1__ algo_data; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_PCA_CON ; 
 int I2C_PCA_CON_SI ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (struct i2c_pca_pf_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int this_irq, void *dev_id)
{
	struct i2c_pca_pf_data *i2c = dev_id;

	if ((i2c->algo_data.read_byte(i2c, I2C_PCA_CON) & I2C_PCA_CON_SI) == 0)
		return IRQ_NONE;

	FUNC1(&i2c->wait);

	return IRQ_HANDLED;
}