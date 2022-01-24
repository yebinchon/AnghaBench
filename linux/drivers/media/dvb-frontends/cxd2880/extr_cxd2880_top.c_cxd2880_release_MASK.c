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
struct dvb_frontend {struct cxd2880_priv* demodulator_priv; } ;
struct cxd2880_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxd2880_priv*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct dvb_frontend *fe)
{
	struct cxd2880_priv *priv = NULL;

	if (!fe) {
		FUNC1("invalid arg.\n");
		return;
	}
	priv = fe->demodulator_priv;
	FUNC0(priv);
}