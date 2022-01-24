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
struct serio {int dummy; } ;
struct iforce {int /*<<< orphan*/  type; int /*<<< orphan*/  wait; } ;
struct iforce_serio {int pkt; unsigned char id; unsigned char len; unsigned char idx; unsigned char* data_in; unsigned char expect_packet; unsigned char cmd_response_len; scalar_t__ csum; int /*<<< orphan*/  cmd_response; struct iforce iforce; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned char IFORCE_MAX_LENGTH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct iforce*,unsigned char,unsigned char*,unsigned char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,unsigned char) ; 
 struct iforce_serio* FUNC3 (struct serio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(struct serio *serio,
				    unsigned char data, unsigned int flags)
{
	struct iforce_serio *iforce_serio = FUNC3(serio);
	struct iforce *iforce = &iforce_serio->iforce;

	if (!iforce_serio->pkt) {
		if (data == 0x2b)
			iforce_serio->pkt = 1;
		goto out;
	}

	if (!iforce_serio->id) {
		if (data > 3 && data != 0xff)
			iforce_serio->pkt = 0;
		else
			iforce_serio->id = data;
		goto out;
	}

	if (!iforce_serio->len) {
		if (data > IFORCE_MAX_LENGTH) {
			iforce_serio->pkt = 0;
			iforce_serio->id = 0;
		} else {
			iforce_serio->len = data;
		}
		goto out;
	}

	if (iforce_serio->idx < iforce_serio->len) {
		iforce_serio->data_in[iforce_serio->idx++] = data;
		iforce_serio->csum += data;
		goto out;
	}

	if (iforce_serio->idx == iforce_serio->len) {
		/* Handle command completion */
		if (iforce_serio->expect_packet == iforce_serio->id) {
			iforce_serio->expect_packet = 0;
			FUNC2(iforce_serio->cmd_response,
			       iforce_serio->data_in, IFORCE_MAX_LENGTH);
			iforce_serio->cmd_response_len = iforce_serio->len;

			/* Signal that command is done */
			FUNC4(&iforce->wait);
		} else if (FUNC1(iforce->type)) {
			FUNC0(iforce, iforce_serio->id,
					      iforce_serio->data_in,
					      iforce_serio->len);
		}

		iforce_serio->pkt = 0;
		iforce_serio->id  = 0;
		iforce_serio->len = 0;
		iforce_serio->idx = 0;
		iforce_serio->csum = 0;
	}
out:
	return IRQ_HANDLED;
}