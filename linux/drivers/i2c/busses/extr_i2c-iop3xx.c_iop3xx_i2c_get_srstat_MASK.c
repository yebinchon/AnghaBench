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
typedef  scalar_t__ u32 ;
struct i2c_algo_iop3xx_data {int /*<<< orphan*/  lock; scalar_t__ SR_received; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline u32
FUNC2(struct i2c_algo_iop3xx_data *iop3xx_adap)
{
	unsigned long flags;
	u32 sr;

	FUNC0(&iop3xx_adap->lock, flags);
	sr = iop3xx_adap->SR_received;
	iop3xx_adap->SR_received = 0;
	FUNC1(&iop3xx_adap->lock, flags);

	return sr;
}