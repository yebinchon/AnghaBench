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
struct i2c_algo_iop3xx_data {int /*<<< orphan*/  waitq; } ;
typedef  int (* compare_func ) (unsigned int,unsigned int) ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct i2c_algo_iop3xx_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(struct i2c_algo_iop3xx_data *iop3xx_adap,
			  unsigned flags, unsigned* status,
			  compare_func compare)
{
	unsigned sr = 0;
	int interrupted;
	int done;
	int rc = 0;

	do {
		interrupted = FUNC2 (
			iop3xx_adap->waitq,
			(done = compare( sr = FUNC1(iop3xx_adap) ,flags )),
			1 * HZ
			);
		if ((rc = FUNC0(sr)) < 0) {
			*status = sr;
			return rc;
		} else if (!interrupted) {
			*status = sr;
			return -ETIMEDOUT;
		}
	} while(!done);

	*status = sr;

	return 0;
}