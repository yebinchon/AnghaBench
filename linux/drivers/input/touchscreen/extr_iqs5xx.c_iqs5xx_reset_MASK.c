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
struct iqs5xx_private {int /*<<< orphan*/  reset_gpio; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct iqs5xx_private* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *client)
{
	struct iqs5xx_private *iqs5xx = FUNC1(client);

	FUNC0(iqs5xx->reset_gpio, 1);
	FUNC2(200, 300);

	FUNC0(iqs5xx->reset_gpio, 0);
}