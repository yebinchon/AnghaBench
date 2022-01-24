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
 int EIO ; 
 scalar_t__ QUP_STATE ; 
 scalar_t__ FUNC0 (struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qup_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct qup_i2c_dev *qup, u32 state)
{
	if (FUNC1(qup) != 0)
		return -EIO;

	FUNC2(state, qup->base + QUP_STATE);

	if (FUNC0(qup, state) != 0)
		return -EIO;
	return 0;
}