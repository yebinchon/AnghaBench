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
struct ps2_gpio_data {unsigned char tx_cnt; unsigned char tx_byte; int /*<<< orphan*/  serio; int /*<<< orphan*/  gpio_data; int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_done; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned char FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
#define  PS2_ACK_BIT 140 
#define  PS2_DATA_BIT0 139 
#define  PS2_DATA_BIT1 138 
#define  PS2_DATA_BIT2 137 
#define  PS2_DATA_BIT3 136 
#define  PS2_DATA_BIT4 135 
#define  PS2_DATA_BIT5 134 
#define  PS2_DATA_BIT6 133 
#define  PS2_DATA_BIT7 132 
 int /*<<< orphan*/  PS2_MODE_RX ; 
#define  PS2_PARITY_BIT 131 
#define  PS2_START_BIT 130 
#define  PS2_STOP_BIT 129 
#define  PS2_TX_TIMEOUT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (unsigned char) ; 
 unsigned long jiffies ; 
 unsigned long FUNC9 (int) ; 

__attribute__((used)) static irqreturn_t FUNC10(struct ps2_gpio_data *drvdata)
{
	unsigned char byte, cnt;
	int data;
	static unsigned long old_jiffies;

	cnt = drvdata->tx_cnt;
	byte = drvdata->tx_byte;

	if (old_jiffies == 0)
		old_jiffies = jiffies;

	if ((jiffies - old_jiffies) > FUNC9(100)) {
		FUNC3(drvdata->dev,
			"TX: timeout, probably we missed an interrupt\n");
		goto err;
	}
	old_jiffies = jiffies;

	switch (cnt) {
	case PS2_START_BIT:
		/* should never happen */
		FUNC3(drvdata->dev,
			"TX: start bit should have been sent already\n");
		goto err;
	case PS2_DATA_BIT0:
	case PS2_DATA_BIT1:
	case PS2_DATA_BIT2:
	case PS2_DATA_BIT3:
	case PS2_DATA_BIT4:
	case PS2_DATA_BIT5:
	case PS2_DATA_BIT6:
	case PS2_DATA_BIT7:
		data = byte & FUNC0(cnt - 1);
		FUNC7(drvdata->gpio_data, data);
		break;
	case PS2_PARITY_BIT:
		/* do odd parity */
		data = !(FUNC8(byte) & 1);
		FUNC7(drvdata->gpio_data, data);
		break;
	case PS2_STOP_BIT:
		/* release data line to generate stop bit */
		FUNC5(drvdata->gpio_data);
		break;
	case PS2_TX_TIMEOUT:
		/* Devices generate one extra clock pulse before sending the
		 * acknowledgment.
		 */
		break;
	case PS2_ACK_BIT:
		FUNC5(drvdata->gpio_data);
		data = FUNC6(drvdata->gpio_data);
		if (data) {
			FUNC4(drvdata->dev, "TX: received NACK, retry\n");
			goto err;
		}

		drvdata->mode = PS2_MODE_RX;
		FUNC2(&drvdata->tx_done);

		cnt = 1;
		old_jiffies = 0;
		goto end; /* success */
	default:
		/* Probably we missed the stop bit. Therefore we release data
		 * line and try again.
		 */
		FUNC5(drvdata->gpio_data);
		FUNC3(drvdata->dev, "TX: got out of sync with the device\n");
		goto err;
	}

	cnt++;
	goto end; /* success */

err:
	cnt = 1;
	old_jiffies = 0;
	FUNC5(drvdata->gpio_data);
	FUNC1(drvdata->serio, drvdata->tx_byte);
end:
	drvdata->tx_cnt = cnt;
	return IRQ_HANDLED;
}