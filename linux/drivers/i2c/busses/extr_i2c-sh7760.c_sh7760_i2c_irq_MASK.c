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
struct i2c_msg {char* buf; unsigned long len; } ;
struct cami2c {int status; int flags; int /*<<< orphan*/  xfer_done; struct i2c_msg* msg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned long FCR_RFRST ; 
 unsigned long FCR_TFRST ; 
 unsigned long FIER_TXIE ; 
 int FIFO_SIZE ; 
 unsigned long FSR_RDF ; 
 unsigned long FSR_TDFE ; 
 unsigned long FSR_TEND ; 
 int /*<<< orphan*/  I2CFCR ; 
 int /*<<< orphan*/  I2CFIER ; 
 int /*<<< orphan*/  I2CFSR ; 
 int /*<<< orphan*/  I2CMCR ; 
 int /*<<< orphan*/  I2CMIER ; 
 int /*<<< orphan*/  I2CMSR ; 
 int /*<<< orphan*/  I2CRFDR ; 
 int /*<<< orphan*/  I2CRXTX ; 
 int /*<<< orphan*/  I2CSAR ; 
 int /*<<< orphan*/  I2CSCR ; 
 int /*<<< orphan*/  I2CSSR ; 
 int /*<<< orphan*/  I2CTFDR ; 
 int IDF_SEND ; 
 int IDF_STOP ; 
 int IDS_ARBLOST ; 
 int IDS_DONE ; 
 int IDS_NACK ; 
 int FUNC0 (struct cami2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned long MCR_FSB ; 
 unsigned long MCR_MIE ; 
 unsigned long MIE_MSTE ; 
 unsigned long MSR_MAL ; 
 unsigned long MSR_MAT ; 
 unsigned long MSR_MNR ; 
 unsigned long MSR_MST ; 
 int /*<<< orphan*/  FUNC1 (struct cami2c*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *ptr)
{
	struct cami2c *id = ptr;
	struct i2c_msg *msg = id->msg;
	char *data = msg->buf;
	unsigned long msr, fsr, fier, len;

	msr = FUNC0(id, I2CMSR);
	fsr = FUNC0(id, I2CFSR);

	/* arbitration lost */
	if (msr & MSR_MAL) {
		FUNC1(id, I2CMCR, 0);
		FUNC1(id, I2CSCR, 0);
		FUNC1(id, I2CSAR, 0);
		id->status |= IDS_DONE | IDS_ARBLOST;
		goto out;
	}

	if (msr & MSR_MNR) {
		/* NACK handling is very screwed up.  After receiving a
		 * NAK IRQ one has to wait a bit  before writing to any
		 * registers, or the ctl will lock up. After that delay
		 * do a normal i2c stop. Then wait at least 1 ms before
		 * attempting another transfer or ctl will stop working
		 */
		FUNC3(100);	/* wait or risk ctl hang */
		FUNC1(id, I2CFCR, FCR_RFRST | FCR_TFRST);
		FUNC1(id, I2CMCR, MCR_MIE | MCR_FSB);
		FUNC1(id, I2CFIER, 0);
		FUNC1(id, I2CMIER, MIE_MSTE);
		FUNC1(id, I2CSCR, 0);
		FUNC1(id, I2CSAR, 0);
		id->status |= IDS_NACK;
		msr &= ~MSR_MAT;
		fsr = 0;
		/* In some cases the MST bit is also set. */
	}

	/* i2c-stop was sent */
	if (msr & MSR_MST) {
		id->status |= IDS_DONE;
		goto out;
	}

	/* i2c slave addr was sent; set to "normal" operation */
	if (msr & MSR_MAT)
		FUNC1(id, I2CMCR, MCR_MIE);

	fier = FUNC0(id, I2CFIER);

	if (fsr & FSR_RDF) {
		len = FUNC0(id, I2CRFDR);
		if (msg->len <= len) {
			if (id->flags & IDF_STOP) {
				FUNC1(id, I2CMCR, MCR_MIE | MCR_FSB);
				FUNC1(id, I2CFIER, 0);
				/* manual says: wait >= 0.5 SCL times */
				FUNC3(5);
				/* next int should be MST */
			} else {
				id->status |= IDS_DONE;
				/* keep the RDF bit: ctrl holds SCL low
				 * until the setup for the next i2c_msg
				 * clears this bit.
				 */
				fsr &= ~FSR_RDF;
			}
		}
		while (msg->len && len) {
			*data++ = FUNC0(id, I2CRXTX);
			msg->len--;
			len--;
		}

		if (msg->len) {
			len = (msg->len >= FIFO_SIZE) ? FIFO_SIZE - 1
						      : msg->len - 1;

			FUNC1(id, I2CFCR, FCR_TFRST | ((len & 0xf) << 4));
		}

	} else if (id->flags & IDF_SEND) {
		if ((fsr & FSR_TEND) && (msg->len < 1)) {
			if (id->flags & IDF_STOP) {
				FUNC1(id, I2CMCR, MCR_MIE | MCR_FSB);
			} else {
				id->status |= IDS_DONE;
				/* keep the TEND bit: ctl holds SCL low
				 * until the setup for the next i2c_msg
				 * clears this bit.
				 */
				fsr &= ~FSR_TEND;
			}
		}
		if (fsr & FSR_TDFE) {
			while (msg->len && (FUNC0(id, I2CTFDR) < FIFO_SIZE)) {
				FUNC1(id, I2CRXTX, *data++);
				msg->len--;
			}

			if (msg->len < 1) {
				fier &= ~FIER_TXIE;
				FUNC1(id, I2CFIER, fier);
			} else {
				len = (msg->len >= FIFO_SIZE) ? 2 : 0;
				FUNC1(id, I2CFCR,
					  FCR_RFRST | ((len & 3) << 2));
			}
		}
	}
out:
	if (id->status & IDS_DONE) {
		FUNC1(id, I2CMIER, 0);
		FUNC1(id, I2CFIER, 0);
		id->msg = NULL;
		FUNC2(&id->xfer_done);
	}
	/* clear status flags and ctrl resumes work */
	FUNC1(id, I2CMSR, ~msr);
	FUNC1(id, I2CFSR, ~fsr);
	FUNC1(id, I2CSSR, 0);

	return IRQ_HANDLED;
}