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
struct qup_i2c_dev {int /*<<< orphan*/  pclk; scalar_t__ base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUP_CLOCK_AUTO_GATE ; 
 scalar_t__ QUP_CONFIG ; 
 int /*<<< orphan*/  QUP_RESET_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct qup_i2c_dev *qup)
{
	u32 config;

	FUNC1(qup, QUP_RESET_STATE);
	FUNC0(qup->clk);
	config = FUNC2(qup->base + QUP_CONFIG);
	config |= QUP_CLOCK_AUTO_GATE;
	FUNC3(config, qup->base + QUP_CONFIG);
	FUNC0(qup->pclk);
}