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
struct dvb_frontend {int /*<<< orphan*/ * sec_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEC_VOLTAGE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dvb_frontend *fe)
{
	/* LNBP power off */
	FUNC1(fe, SEC_VOLTAGE_OFF);

	/* free data */
	FUNC0(fe->sec_priv);
	fe->sec_priv = NULL;
}