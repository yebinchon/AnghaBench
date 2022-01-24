#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sx8654 {TYPE_1__* client; int /*<<< orphan*/  input; int /*<<< orphan*/  props; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_TOUCH ; 
 int CMD_READ_REGISTER ; 
 int I2C_REG_IRQSRC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int IRQ_PENRELEASE ; 
 int IRQ_PENTOUCH_TOUCHCONVDONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (TYPE_1__*,int*,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *handle)
{
	struct sx8654 *sx8654 = handle;
	int irqsrc;
	u8 data[4];
	unsigned int x, y;
	int retval;

	irqsrc = FUNC2(sx8654->client,
					  CMD_READ_REGISTER | I2C_REG_IRQSRC);
	FUNC0(&sx8654->client->dev, "irqsrc = 0x%x", irqsrc);

	if (irqsrc < 0)
		goto out;

	if (irqsrc & IRQ_PENRELEASE) {
		FUNC0(&sx8654->client->dev, "pen release interrupt");

		FUNC3(sx8654->input, BTN_TOUCH, 0);
		FUNC4(sx8654->input);
	}

	if (irqsrc & IRQ_PENTOUCH_TOUCHCONVDONE) {
		FUNC0(&sx8654->client->dev, "pen touch interrupt");

		retval = FUNC1(sx8654->client, data, sizeof(data));
		if (retval != sizeof(data))
			goto out;

		/* invalid data */
		if (FUNC6(data[0] & 0x80 || data[2] & 0x80))
			goto out;

		x = ((data[0] & 0xf) << 8) | (data[1]);
		y = ((data[2] & 0xf) << 8) | (data[3]);

		FUNC5(sx8654->input, &sx8654->props, x, y,
				       false);
		FUNC3(sx8654->input, BTN_TOUCH, 1);
		FUNC4(sx8654->input);

		FUNC0(&sx8654->client->dev, "point(%4d,%4d)\n", x, y);
	}

out:
	return IRQ_HANDLED;
}