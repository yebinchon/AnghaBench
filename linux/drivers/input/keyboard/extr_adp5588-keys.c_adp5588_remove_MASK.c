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
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct adp5588_kpad {int /*<<< orphan*/  input; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG ; 
 int /*<<< orphan*/  FUNC0 (struct adp5588_kpad*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct adp5588_kpad*) ; 
 struct adp5588_kpad* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adp5588_kpad*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct adp5588_kpad *kpad = FUNC4(client);

	FUNC1(client, CFG, 0);
	FUNC3(client->irq, kpad);
	FUNC2(&kpad->work);
	FUNC5(kpad->input);
	FUNC0(kpad);
	FUNC6(kpad);

	return 0;
}