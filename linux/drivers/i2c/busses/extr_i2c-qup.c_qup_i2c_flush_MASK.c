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
typedef  int /*<<< orphan*/  u32 ;
struct qup_i2c_dev {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUP_I2C_FLUSH ; 
 scalar_t__ QUP_STATE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct qup_i2c_dev *qup)
{
	u32 val = FUNC0(qup->base + QUP_STATE);

	val |= QUP_I2C_FLUSH;
	FUNC1(val, qup->base + QUP_STATE);
}