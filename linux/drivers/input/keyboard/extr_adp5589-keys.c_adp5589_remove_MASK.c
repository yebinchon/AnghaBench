#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct adp5589_kpad {int /*<<< orphan*/  input; TYPE_1__* var; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reg ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ADP5589_GENERAL_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct adp5589_kpad*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct adp5589_kpad*) ; 
 struct adp5589_kpad* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adp5589_kpad*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct adp5589_kpad *kpad = FUNC3(client);

	FUNC1(client, kpad->var->reg(ADP5589_GENERAL_CFG), 0);
	FUNC2(client->irq, kpad);
	FUNC4(kpad->input);
	FUNC0(kpad);
	FUNC5(kpad);

	return 0;
}