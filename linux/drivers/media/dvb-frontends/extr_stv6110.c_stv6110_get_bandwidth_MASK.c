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
typedef  int u32 ;
struct stv6110_priv {int* regs; } ;
struct dvb_frontend {struct stv6110_priv* tuner_priv; } ;

/* Variables and functions */
 size_t RSTV6110_CTRL3 ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*,int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe, u32 *bandwidth)
{
	struct stv6110_priv *priv = fe->tuner_priv;
	u8 r8 = 0;
	u8 regs[] = { 0, 0, 0, 0, 0, 0, 0, 0 };
	FUNC0(fe, regs, 0, 8);

	/* CF */
	r8 = priv->regs[RSTV6110_CTRL3] & 0x1f;
	*bandwidth = (r8 + 5) * 2000000;/* x2 for ZIF tuner BW/2 = F+5 Mhz */

	return 0;
}