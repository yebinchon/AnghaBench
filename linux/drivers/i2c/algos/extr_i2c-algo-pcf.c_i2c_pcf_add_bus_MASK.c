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
struct i2c_algo_pcf_data {int dummy; } ;
struct i2c_adapter {int /*<<< orphan*/ * algo; int /*<<< orphan*/  dev; struct i2c_algo_pcf_data* algo_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  pcf_algo ; 
 int FUNC3 (struct i2c_algo_pcf_data*) ; 

int FUNC4(struct i2c_adapter *adap)
{
	struct i2c_algo_pcf_data *pcf_adap = adap->algo_data;
	int rval;

	FUNC0(FUNC1(&adap->dev, "hw routines registered.\n"));

	/* register new adapter to i2c module... */
	adap->algo = &pcf_algo;

	if ((rval = FUNC3(pcf_adap)))
		return rval;

	rval = FUNC2(adap);

	return rval;
}