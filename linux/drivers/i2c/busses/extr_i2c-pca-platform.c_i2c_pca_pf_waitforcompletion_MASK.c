#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int (* read_byte ) (struct i2c_pca_pf_data*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {unsigned long timeout; } ;
struct i2c_pca_pf_data {TYPE_1__ algo_data; TYPE_2__ adap; int /*<<< orphan*/  wait; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_PCA_CON ; 
 int I2C_PCA_CON_SI ; 
 unsigned long jiffies ; 
 int FUNC0 (struct i2c_pca_pf_data*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_pca_pf_data*,int /*<<< orphan*/ ) ; 
 long FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 long FUNC4 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC5(void *pd)
{
	struct i2c_pca_pf_data *i2c = pd;
	unsigned long timeout;
	long ret;

	if (i2c->irq) {
		ret = FUNC4(i2c->wait,
			i2c->algo_data.read_byte(i2c, I2C_PCA_CON)
			& I2C_PCA_CON_SI, i2c->adap.timeout);
	} else {
		/* Do polling */
		timeout = jiffies + i2c->adap.timeout;
		do {
			ret = FUNC2(jiffies, timeout);
			if (i2c->algo_data.read_byte(i2c, I2C_PCA_CON)
					& I2C_PCA_CON_SI)
				break;
			FUNC3(100);
		} while (ret);
	}

	return ret > 0;
}