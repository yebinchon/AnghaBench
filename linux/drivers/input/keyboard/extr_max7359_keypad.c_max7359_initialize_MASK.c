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
 int MAX7359_CFG_KEY_RELEASE ; 
 int MAX7359_CFG_WAKEUP ; 
 int /*<<< orphan*/  MAX7359_REG_CONFIG ; 
 int /*<<< orphan*/  MAX7359_REG_DEBOUNCE ; 
 int /*<<< orphan*/  MAX7359_REG_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)
{
	FUNC1(client, MAX7359_REG_CONFIG,
		MAX7359_CFG_KEY_RELEASE | /* Key release enable */
		MAX7359_CFG_WAKEUP); /* Key press wakeup enable */

	/* Full key-scan functionality */
	FUNC1(client, MAX7359_REG_DEBOUNCE, 0x1F);

	/* nINT asserts every debounce cycles */
	FUNC1(client, MAX7359_REG_INTERRUPT, 0x01);

	FUNC0(client);
}