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
struct stv {int dummy; } ;
struct dvb_frontend {struct stv* demodulator_priv; } ;
typedef  enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  DISEQC_MODE ; 
 int /*<<< orphan*/  DISTXFIFO ; 
 int /*<<< orphan*/  DIS_PRECHARGE ; 
 int SEC_MINI_A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stv*,int,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, enum fe_sec_mini_cmd burst)
{
	struct stv *state = fe->demodulator_priv;
	u8 value;

	if (burst == SEC_MINI_A) {
		FUNC0(DISEQC_MODE, 3);
		value = 0x00;
	} else {
		FUNC0(DISEQC_MODE, 2);
		value = 0xFF;
	}

	FUNC0(DIS_PRECHARGE, 1);
	FUNC2(state, 0x40, 0x00);
	FUNC1(DISTXFIFO, value);
	FUNC0(DIS_PRECHARGE, 0);
	FUNC2(state, 0x20, 0x20);

	return 0;
}