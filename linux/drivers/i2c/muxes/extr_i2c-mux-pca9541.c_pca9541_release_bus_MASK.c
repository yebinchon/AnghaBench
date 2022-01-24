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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCA9541_CONTROL ; 
 int PCA9541_CTL_NBUSON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client)
{
	int reg;

	reg = FUNC2(client, PCA9541_CONTROL);
	if (reg >= 0 && !FUNC0(reg) && FUNC1(reg))
		FUNC3(client, PCA9541_CONTROL,
				  (reg & PCA9541_CTL_NBUSON) >> 1);
}