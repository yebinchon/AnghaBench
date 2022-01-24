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
typedef  int u8 ;
struct s5h1420_state {int dummy; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;
struct dvb_diseqc_slave_reply {int timeout; int msg_len; int* msg; } ;

/* Variables and functions */
 int EIO ; 
 int EOVERFLOW ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct s5h1420_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct s5h1420_state*,int,int) ; 
 scalar_t__ FUNC3 (int,unsigned long) ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 

__attribute__((used)) static int FUNC5 (struct dvb_frontend* fe,
				     struct dvb_diseqc_slave_reply* reply)
{
	struct s5h1420_state* state = fe->demodulator_priv;
	u8 val;
	int i;
	int length;
	unsigned long timeout;
	int result = 0;

	/* setup for DISEQC receive */
	val = FUNC1(state, 0x3b);
	FUNC2(state, 0x3b, 0x82); /* FIXME: guess - do we need to set DIS_RDY(0x08) in receive mode? */
	FUNC0(15);

	/* wait for reception to complete */
	timeout = jiffies + ((reply->timeout*HZ) / 1000);
	while(FUNC4(jiffies, timeout)) {
		if (!(FUNC1(state, 0x3b) & 0x80)) /* FIXME: do we test DIS_RDY(0x08) or RCV_EN(0x80)? */
			break;

		FUNC0(5);
	}
	if (FUNC3(jiffies, timeout)) {
		result = -ETIMEDOUT;
		goto exit;
	}

	/* check error flag - FIXME: not sure what this does - docs do not describe
	 * beyond "error flag for diseqc receive data :( */
	if (FUNC1(state, 0x49)) {
		result = -EIO;
		goto exit;
	}

	/* check length */
	length = (FUNC1(state, 0x3b) & 0x70) >> 4;
	if (length > sizeof(reply->msg)) {
		result = -EOVERFLOW;
		goto exit;
	}
	reply->msg_len = length;

	/* extract data */
	for(i=0; i< length; i++) {
		reply->msg[i] = FUNC1(state, 0x3d + i);
	}

exit:
	/* restore original settings */
	FUNC2(state, 0x3b, val);
	FUNC0(15);
	return result;
}