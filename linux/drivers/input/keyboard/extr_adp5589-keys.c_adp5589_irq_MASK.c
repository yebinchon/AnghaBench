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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct adp5589_kpad {int /*<<< orphan*/  input; struct i2c_client* client; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADP5589_5_INT_STATUS ; 
 int /*<<< orphan*/  ADP5589_5_STATUS ; 
 int EVENT_INT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int KEC ; 
 int OVRFLOW_INT ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adp5589_kpad*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *handle)
{
	struct adp5589_kpad *kpad = handle;
	struct i2c_client *client = kpad->client;
	int status, ev_cnt;

	status = FUNC0(client, ADP5589_5_INT_STATUS);

	if (status & OVRFLOW_INT)	/* Unlikely and should never happen */
		FUNC3(&client->dev, "Event Overflow Error\n");

	if (status & EVENT_INT) {
		ev_cnt = FUNC0(client, ADP5589_5_STATUS) & KEC;
		if (ev_cnt) {
			FUNC1(kpad, ev_cnt);
			FUNC4(kpad->input);
		}
	}

	FUNC2(client, ADP5589_5_INT_STATUS, status); /* Status is W1C */

	return IRQ_HANDLED;
}