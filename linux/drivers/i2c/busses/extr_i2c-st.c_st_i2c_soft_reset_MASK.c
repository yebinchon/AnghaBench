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
struct st_i2c_dev {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SSC_CTL ; 
 int /*<<< orphan*/  SSC_CTL_SR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct st_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct st_i2c_dev *i2c_dev)
{
	/*
	 * FIFO needs to be emptied before reseting the IP,
	 * else the controller raises a BUSY error.
	 */
	FUNC1(i2c_dev);

	FUNC2(i2c_dev->base + SSC_CTL, SSC_CTL_SR);
	FUNC0(i2c_dev->base + SSC_CTL, SSC_CTL_SR);
}