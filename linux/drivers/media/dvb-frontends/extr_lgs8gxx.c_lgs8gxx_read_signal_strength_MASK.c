#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct lgs8gxx_state {TYPE_1__* config; } ;
struct dvb_frontend {struct lgs8gxx_state* demodulator_priv; } ;
struct TYPE_2__ {scalar_t__ prod; } ;

/* Variables and functions */
 scalar_t__ LGS8GXX_PROD_LGS8913 ; 
 scalar_t__ LGS8GXX_PROD_LGS8G75 ; 
 int FUNC0 (struct lgs8gxx_state*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct lgs8gxx_state*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct lgs8gxx_state*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, u16 *signal)
{
	struct lgs8gxx_state *priv = fe->demodulator_priv;

	if (priv->config->prod == LGS8GXX_PROD_LGS8913)
		return FUNC0(priv, signal);
	else if (priv->config->prod == LGS8GXX_PROD_LGS8G75)
		return FUNC1(priv, signal);
	else
		return FUNC2(priv, signal);
}